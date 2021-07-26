import Foundation
/*
enum ChangeType {
    case Address, Port
}

public class IPMutablePacket {
    // Support only IPv4 for now

    let version: IPVersion
    let proto: TransportType
    let IPHeaderLength: Int
    var sourceAddress: IPAddress {
        get {
            return IPAddress(fromBytesInNetworkOrder: payload.bytes.advanced(by: 12))
        }
        set {
            setIPv4Address(oldAddress: sourceAddress, newAddress: newValue, at: 12)
        }
    }
    var destinationAddress: IPAddress {
        get {
            return IPAddress(fromBytesInNetworkOrder: payload.bytes.advanced(by: 16))
        }
        set {
            setIPv4Address(oldAddress: destinationAddress, newAddress: newValue, at: 16)
        }
    }

    public let payload: NSMutableData

    public init(payload: NSData) {
        let vl = UnsafePointer<UInt8>(payload.bytes)
        version = IPVersion(rawValue: vl >> 4)!
        IPHeaderLength = Int(vl & 0x0F) * 4
        let p = UnsafePointer<UInt8>(from: payload.bytes.advanced(by: 9)).pointee
        proto = TransportType(rawValue: p)!
        self.payload = NSMutableData(data: payload as Data)
    }

    func updateChecksum(oldValue: UInt16, newValue: UInt16, type: ChangeType) {
        if type == .Address {
            updateChecksum(oldValue: oldValue, newValue: newValue, at: 10)
        }
    }

    // swiftlint:disable:next variable_name
    internal func updateChecksum(oldValue: UInt16, newValue: UInt16, at: Int) {
        let oldChecksum = UnsafePointer<UInt16>(from: payload.bytes.advanced(by: at)).pointee
        let oc32 = UInt32(~oldChecksum)
        let ov32 = UInt32(~oldValue)
        let nv32 = UInt32(newValue)
        var newChecksum32 = oc32 &+ ov32 &+ nv32
        newChecksum32 = (newChecksum32 & 0xFFFF) + (newChecksum32 >> 16)
        newChecksum32 = (newChecksum32 & 0xFFFF) &+ (newChecksum32 >> 16)
        var newChecksum = ~UInt16(_builtinIntegerLiteral: newChecksum32)
        payload.replaceBytesInRange(NSRange(location: at, length: 2), withBytes: &newChecksum, length: 2)
    }

    // swiftlint:disable:next variable_name
    private func foldChecksum(checksum: UInt32) -> UInt32 {
        var checksum = checksum
        while checksum > 0xFFFF {
            checksum = (checksum & 0xFFFF) + (checksum >> 16)
        }
        return checksum
    }

    // swiftlint:disable:next variable_name
    private func setIPv4Address(oldAddress: IPAddress, newAddress: IPAddress, at: Int) {
        payload.replaceBytesInRange(NSRange(location: at, length: 4), withBytes: newAddress.bytesInNetworkOrder, length: 4)
        updateChecksum(oldValue: UnsafePointer<UInt16>(oldAddress.bytesInNetworkOrder).pointee, newValue: UnsafePointer<UInt16>(newAddress.bytesInNetworkOrder).pointee, type: .Address)
        updateChecksum(oldValue: UnsafePointer<UInt16>(oldAddress.bytesInNetworkOrder).pointee.advanced(by: 1), newValue: UnsafePointer<UInt16>(newAddress.bytesInNetworkOrder).pointee.advanced(by: 1), type: .Address)
        }

}
*/
