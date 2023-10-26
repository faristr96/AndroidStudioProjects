import 'package:get/get.dart';
import 'package:latihan/app/routes/api_service.dart';
import 'package:latihan/app/data/todos.dart'; // Pastikan path impor benar

class TodosController extends GetxController {
  final ApiService _apiService = ApiService();
  var todos = <Todos>[].obs; // Menggunakan List of Todos dan .obs

  var isLoading = false.obs;
  var isError = false.obs;

  void fetchTodo() async {
    isLoading.value = true;
    try {
      final fetchedTodos = await _apiService.fetchTodo();
      todos.value = [fetchedTodos]; // Memasukkan hasil fetch ke dalam List
      isError.value = false;
    } catch (e) {
      print(e);
      isError.value = true;
    } finally {
      isLoading.value = false;
    }
  }
}
