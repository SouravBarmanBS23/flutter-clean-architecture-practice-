

enum VerificationStatus{

  pending('Pending'),
  progress('Progress'),
  accepted('Accepted'),
  rejected('Rejected');

     const VerificationStatus(
     this.status,);
      final String status;

      String get getStatus => status;
}

void main(){
   checkStatus();
}
void checkStatus(){


  if(VerificationStatus.pending.status == 'Pending'){
    print('pending status');
  }else{
    print('no status');

  }
}