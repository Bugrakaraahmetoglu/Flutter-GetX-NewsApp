import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primaryContainer,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search News...",
                          fillColor: Theme.of(context).colorScheme.primaryContainer, 
                       
                          border: InputBorder.none
                       
                        ),
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 50,
                    
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Theme.of(context).colorScheme.primary,
                      ),
                      child: Icon(
                        Icons.search, 
                      ),
                    )
                  ],
                ),
              );
  }
}