CREATE TRIGGER remove_from_cart AFTER INSERT ON `Order`
FOR EACH ROW
BEGIN
   DELETE FROM Cart WHERE productID = NEW.productID;
END;

CREATE TRIGGER `update_funds_raised` AFTER INSERT ON `Billing`
FOR EACH ROW
BEGIN
  UPDATE `NGO` SET `funds_raised` = `funds_raised` + NEW.amount_donated WHERE `ngoID` = NEW.ngoID;
END;
