@Entry
@Component
struct Data {
  build() {

  }
}

//
class ResponseData {
  code: number = 200;
  message: string = '';
  data: DataItem = new DataItem()
}

class DataItem {
  id: string = '';
  startAgencyId: string = '';
  startProvince: string = '';
  startCity: string = '';
  startAddress: string = '';
  endAgencyId: string = '';
  endProvince: string = '';
  endAddress: string = '';
  endCity: string = '';
  status: number = 6;
  driverId: string = '';
  transportTaskId: string = '';
  startHandover: string = '';
  startHandoverPhone: string = '';
  finishHandover: string = '';
  finishHandoverPhone: string = '';
  planDepartureTime: string = '';
  actualDepartureTime: string = '';
  planArrivalTime: string = '';
  actualArrivalTime: string = '';
  licensePlate: string = '';
  driverName: string = '';
  cargoPickUpPictureList: Array<CargoPickUpPictureList> = new Array();
  transportCertificateList: Array<TransportCertificateList> = new Array();
  deliverPictureList: Array<DeliverPictureList> = new Array();
}

class CargoPickUpPictureList {
  url: String = ''
}

class TransportCertificateList {
  url: String = ''
}

class DeliverPictureList {
  url: String = ''
}