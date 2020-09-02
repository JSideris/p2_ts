import Pool from "./pool";
import OverlapKeeperRecord from "./overlap-keeper-record";


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
	destroy(record: OverlapKeeperRecord) {
		record.set(undefined,undefined,undefined,undefined);
		return this;
	};

}