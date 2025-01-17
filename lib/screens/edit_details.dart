import 'package:flutter/material.dart';
import 'package:google_bookmark/controllers/book_controller.dart';
import 'package:google_bookmark/models/personal_book.dart';
import 'package:google_bookmark/screens/components/date_input.dart';
import '../theme.dart';
import 'components/display_text.dart';
import 'components/entry.dart';
import 'components/primary_button.dart';

class EditDetails extends StatefulWidget {
  const EditDetails({super.key, required this.book});

  final PersonalBook book;

  @override
  State<EditDetails> createState() => _EditDetailsState();
}

class _EditDetailsState extends State<EditDetails> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController initialDateController = TextEditingController();
  final TextEditingController finalDateController = TextEditingController();
  final TextEditingController commentsController = TextEditingController();
  final BookController bookController = BookController();

  @override
  void initState() {
    super.initState();
    if (widget.book.comments != "") {
      commentsController.text = widget.book.comments;
    }
    if (widget.book.dayStarted != "") {
      initialDateController.text = widget.book.dayStarted;
    }
    if (widget.book.dayFinished != "") {
      finalDateController.text = widget.book.dayFinished;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: AppBackgroundProperties.boxDecoration,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: AppColors.black,
          ),
          body: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 32.0),
                  child: DisplayText("Editando o Livro"),
                ),
                SizedBox(
                  width: 244,
                  child: Column(
                    children: <Widget>[
                      Entry(book: widget.book.googleBook),
                      Form(
                        key: _formKey,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(bottom: 16.0),
                              child: DateInput(
                                  textController: initialDateController,
                                  label: "Início da Leitura"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 24.0),
                              child: DateInput(
                                  textController: finalDateController,
                                  label: "Final da Leitura"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 24.0),
                              child: TextFormField(
                                controller: commentsController,
                                decoration: InputDecorationProperties
                                    .newInputDecoration(
                                  "",
                                  "Comentários",
                                ),
                                maxLines: 5,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 40.0),
                              child: PrimaryButton(
                                  text: "Salvar",
                                  onTap: () {
                                    final PersonalBook newBook = PersonalBook(
                                        id: widget.book.id,
                                        dayFinished: finalDateController.text,
                                        comments: commentsController.text,
                                        dayStarted: initialDateController.text,
                                        googleBook: widget.book.googleBook);
                                    bookController.updateBook(newBook);
                                    Navigator.pop(context, newBook);
                                  }),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
