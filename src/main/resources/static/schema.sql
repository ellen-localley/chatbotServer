CREATE TABLE electric_vehicle
(
    `car_id`                 INT            NOT NULL    AUTO_INCREMENT,
    `manufacturer`           VARCHAR(45)    NULL,
    `trim`                   VARCHAR(45)    NULL,
    `manufacturing_yyyy_mm`  VARCHAR(45)    NULL,
    `price`                  VARCHAR(45)    NULL,
    `fuel_efficiency`        VARCHAR(45)    NULL,
    `rapid_charging`         VARCHAR(45)    NULL,
    `slow_charging`          VARCHAR(45)    NULL,
    `mileage`                VARCHAR(45)    NULL,
    `battery_capacity`       VARCHAR(45)    NULL,
    `subsidy`                VARCHAR(45)    NULL,
    `production_site`        VARCHAR(45)    NULL,
    `color`                  VARCHAR(45)    NULL,
    `technical_option`       VARCHAR(45)    NULL,
    `design_option`          VARCHAR(45)    NULL,
    PRIMARY KEY (car_id)
);
CREATE TABLE market_price
(
    `id`                     INT            NULL        AUTO_INCREMENT,
    `car_type`               VARCHAR(45)    NULL,
    `depreciation_rate`      VARCHAR(45)    NULL,
    `car_id`                 INT            NULL,
    `manufacturing_yyyy_mm`  VARCHAR(45)    NULL,
    PRIMARY KEY (id)
);

ALTER TABLE market_price
    ADD CONSTRAINT FK_market_price_car_id_electric_vehicle_car_id FOREIGN KEY (car_id, manufacturing_yyyy_mm)
        REFERENCES electric_vehicle (car_id, manufacturing_yyyy_mm) ON DELETE RESTRICT ON UPDATE RESTRICT;

CREATE TABLE residual_rate
(
    `car_id`         INT            NULL,
    `car_type`       VARCHAR(45)    NULL,
    `durable_years`  VARCHAR(45)    NULL,
    `one_year`       INT            NULL,
    `two_years`      INT            NULL,
    `three_years`    INT            NULL,
    `four_years`     INT            NULL,
    `five_years`     INT            NULL
);

ALTER TABLE residual_rate
    ADD CONSTRAINT FK_residual_rate_car_id_electric_vehicle_car_id FOREIGN KEY (car_id)
        REFERENCES electric_vehicle (car_id) ON DELETE RESTRICT ON UPDATE RESTRICT;