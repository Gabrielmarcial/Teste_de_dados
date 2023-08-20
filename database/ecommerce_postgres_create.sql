CREATE TABLE "public.payments" (
	"customer_number" int NOT NULL,
	"check_number" varchar(255) NOT NULL,
	"payment_date" DATE NOT NULL,
	"amount" numeric NOT NULL
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.customers" (
	"customer_number" serial NOT NULL,
	"customer_name" varchar(50) NOT NULL,
	"contact_last_name" varchar(50) NOT NULL,
	"contact_first_name" varchar(50) NOT NULL,
	"phone" varchar(50) NOT NULL,
	"address_line1" varchar(50) NOT NULL,
	"address_line2" varchar(50),
	"city" varchar(50) NOT NULL,
	"state" varchar(50),
	"postal_code" varchar(50),
	"country" varchar(50) NOT NULL,
	"sales_rep_employee_number" int(50) NOT NULL,
	"credit_limit" int(5),
	CONSTRAINT "customers_pk" PRIMARY KEY ("customer_number")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.employees" (
	"employee_number" serial NOT NULL,
	"last_name" varchar(50) NOT NULL,
	"first_name" varchar(50) NOT NULL,
	"extension" varchar(50) NOT NULL,
	"email" varchar(100) NOT NULL,
	"office_code" varchar(10) NOT NULL,
	"reports_to" int,
	"job_Title" varchar(50) NOT NULL,
	CONSTRAINT "employees_pk" PRIMARY KEY ("employee_number")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.offices" (
	"office_code" serial(10) NOT NULL,
	"city" varchar(50) NOT NULL,
	"phone" varchar(50) NOT NULL,
	"address_line1" varchar(50) NOT NULL,
	"address_line2" varchar(50),
	"state" varchar(50),
	"country" varchar(50) NOT NULL,
	"postal_code" varchar(15) NOT NULL,
	"territory" varchar(15) NOT NULL,
	CONSTRAINT "offices_pk" PRIMARY KEY ("office_code")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.products" (
	"product_code" varchar(15) NOT NULL,
	"product_name" varchar(50) NOT NULL,
	"product_line" varchar(50) NOT NULL,
	"product_scale" varchar(50) NOT NULL,
	"product_vendor" varchar(50) NOT NULL,
	"product_description" TEXT NOT NULL,
	"quantity_in_stock" int NOT NULL,
	"buy_price" float4 NOT NULL,
	"msrp" float4 NOT NULL,
	CONSTRAINT "products_pk" PRIMARY KEY ("product_code")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.product_lines" (
	"product_line" varchar(50) NOT NULL UNIQUE,
	"text_description" TEXT,
	"html_description" TEXT,
	"image" bytea
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.orders" (
	"order_number" serial NOT NULL,
	"order_date" DATE NOT NULL,
	"required_date" DATE NOT NULL,
	"shipped_date" DATE,
	"status" varchar(255) NOT NULL,
	"comments" TEXT,
	"customer_number" int,
	CONSTRAINT "orders_pk" PRIMARY KEY ("order_number")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.orderdetails" (
	"order_number" int NOT NULL,
	"product_code" varchar(15) NOT NULL,
	"quantity_ordered" int NOT NULL,
	"price_each" numeric NOT NULL,
	"order_line_number" int NOT NULL
) WITH (
  OIDS=FALSE
);



ALTER TABLE "payments" ADD CONSTRAINT "payments_fk0" FOREIGN KEY ("customer_number") REFERENCES "customers"("customer_number");

ALTER TABLE "customers" ADD CONSTRAINT "customers_fk0" FOREIGN KEY ("sales_rep_employee_number") REFERENCES "employees"("employee_number");

ALTER TABLE "employees" ADD CONSTRAINT "employees_fk0" FOREIGN KEY ("office_code") REFERENCES "offices"("office_code");


ALTER TABLE "products" ADD CONSTRAINT "products_fk0" FOREIGN KEY ("product_line") REFERENCES "product_lines"("product_line");


ALTER TABLE "orders" ADD CONSTRAINT "orders_fk0" FOREIGN KEY ("customer_number") REFERENCES "customers"("customer_number");

ALTER TABLE "orderdetails" ADD CONSTRAINT "orderdetails_fk0" FOREIGN KEY ("order_number") REFERENCES "orders"("order_number");
ALTER TABLE "orderdetails" ADD CONSTRAINT "orderdetails_fk1" FOREIGN KEY ("product_code") REFERENCES "products"("product_code");









