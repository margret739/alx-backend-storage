-- Creates a trigger that decreases the quantity
-- of an item adding a new order.
DROP TRIGGER IF EXISTS reduce_quantity;
DELIMETER $$
CREATE TRIGGER reduce_quantity
AFTER INSERT ON orders
FOR EACH ROW
BEGIN
	UPDATE items
	    SET quantity = quantity - NEW.number
	    WHERE name = NEW.item_name;
END $$
DELIMETER ;

