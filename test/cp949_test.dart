import 'package:flutter_test/flutter_test.dart';
import 'package:cp949/cp949.dart';

void main() async {
	test('decode first', () {
			List<int> values = new List();
			values.add(0xc7);
			values.add(0xd1);
			values.add(0xb1);
			values.add(0xdb);
			values.add(0xc0);
			values.add(0xd4);
			values.add(0xb4);
			values.add(0xcf);
			values.add(0xb4);
			values.add(0xd9);
			values.add(0x2e);

			CP949 cp = new CP949();
			final u = cp.decode(values);
			expect(u, '한글입니다.');
	});

	test('encode first', () {
			List<int> values = new List();
			values.add(0xc7);
			values.add(0xd1);
			values.add(0xb1);
			values.add(0xdb);
			values.add(0xc0);
			values.add(0xd4);
			values.add(0xb4);
			values.add(0xcf);
			values.add(0xb4);
			values.add(0xd9);
			values.add(0x2e);

			CP949 cp = new CP949();
			final u = cp.encode('한글입니다.');
			expect(u, values);
	});
}
