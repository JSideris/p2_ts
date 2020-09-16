//type i16=number; type i32=number;type i64=number;type u16=number; type u32=number;type u64=number;type f32=number;

import Pool from "./pool";
import OverlapKeeperRecord from "./overlap-keeper-record";
import OverlapKeeper from "./overlap-keeper";


export default class OverlapKeeperRecordPool extends Pool<OverlapKeeperRecord>{

	/**
	 * @class
	 */
	constructor(size: u32|null) {
		super(size);
	}

	/**
	 * @method create
	 * @return {OverlapKeeperRecord}
	 */
	create(): OverlapKeeperRecord {
		return new OverlapKeeperRecord(null, null, null, null);
	};

	/**
	 * @method destroy
	 * @param {OverlapKeeperRecord} record
	 * @return {OverlapKeeperRecordPool}
	 */
	destroy(record: OverlapKeeperRecord): OverlapKeeperRecordPool {
		record.set(null,null,null,null);
		return this;
	};

}