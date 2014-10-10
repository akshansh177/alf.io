--
-- This file is part of bagarino.
--
-- bagarino is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- bagarino is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with bagarino.  If not, see <http://www.gnu.org/licenses/>.
--

INSERT INTO organization(name, description, email) VALUES ('demo', 'demo organization', 'info@pippobaudo.com');

insert into event(description, short_name, owner, location, latitude, longitude, start_ts, end_ts, regular_price_cts, currency, available_seats, vat_included, vat, allowed_payment_proxies, private_key)
  values('event desc', 'eventname', 0, 'demo location', '0', '0', '2015-01-10 00:00:00' , '2015-01-10 23:59:00' , 1000, 'CHF', 440, 'true', 8, 'STRIPE', 'bagarino-rulez');

insert into j_event_organization(event_id, org_id) values(0, 0);

insert into ticket_category(inception, expiration, name, description, max_tickets, price_cts, access_restricted) values
  ('2014-01-10 00:00:00', '2015-01-10 00:00:00', 'Normal', 'Very good category', 2, 0, false),
  ('2014-01-10 00:00:00', '2015-01-10 00:00:00', 'Not normal', 'Very very good category', 4, 500, false);
  
insert into j_event_ticket_category(event_id, ticket_category_id) values (0,0);
insert into j_event_ticket_category(event_id, ticket_category_id) values (0,1);

insert into ticket (uuid, creation, category_id, event_id, status, original_price_cts, paid_price_cts)
  values
  ('abcdefghilmn', '2014-01-10 00:00:00', 0, 0, 'FREE', 0, 0),
  ('abcdefghilmo', '2014-01-10 00:00:00', 0, 0, 'FREE', 0, 0),
  ('abcdefghilmn41', '2014-01-10 00:00:00', 1, 0, 'FREE', 500, 500),
  ('abcdefghilmn42', '2014-01-10 00:00:00', 1, 0, 'FREE', 500, 500),
  ('abcdefghilmn43', '2014-01-10 00:00:00', 1, 0, 'FREE', 500, 500),
  ('abcdefghilmo44', '2014-01-10 00:00:00', 1, 0, 'FREE', 500, 500);
  
insert into configuration (c_key, c_value, description) values
	('STRIPE_SECRET_KEY', 'sk_test_cayJOFUUYF9cWOoMXemJd61Z', 'test api key'),
	('STRIPE_PUBLIC_KEY', 'pk_test_gY3X0UiTgKCeStUG67i2kEFq', 'test client side api key'),
	('MAX_AMOUNT_OF_TICKETS_BY_RESERVATION', '5', 'max amount of tickets'),
	('SPECIAL_PRICE_CODE_LENGTH', '6', 'length of special price code');
