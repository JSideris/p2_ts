type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import Pool from "./pool";
import OverlapKeeperRecord from "./overlap-keeper-record";
import OverlapKeeper from "./overlap-keeper";


export default class OverlapKeeperRecordPool extends Pool{

	/**
	 * @class
	 */
	constructor(options?: {
		size?: u32
	}) {
		super(options);
	}

	/**
	 * @method create
	 * @return {OverlapKeeperRecord}
	 */
	create(): OverlapKeeperRecord {
		return new OverlapKeeperRecord();
	};

	/**
	 * @method destroy
	 * @param {OverlapKeeperRecord} record
	 * @return {OverlapKeeperRecordPool}
	 */
	destroy(record: OverlapKeeperRecord): OverlapKeeperRecordPool {
		record.set(undefined,undefined,undefined,undefined);
		return this;
	};

}