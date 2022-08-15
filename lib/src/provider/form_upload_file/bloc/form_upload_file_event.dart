part of 'form_upload_file_bloc.dart';

@freezed
class FormUploadFileEvent with _$FormUploadFileEvent {
  const factory FormUploadFileEvent.addFile(List<PlatformFile> filesList) =
      _AddFile;
  const factory FormUploadFileEvent.clear() = _Clear;
}
