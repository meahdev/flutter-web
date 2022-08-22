// ignore_for_file: unnecessary_const, unnecessary_string_interpolations

import 'package:admin_dashboard/src/constant/color.dart';
import 'package:admin_dashboard/src/utils/hover.dart';
import 'package:admin_dashboard/src/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutterx/flutterx.dart';

class DirectoryPage extends StatefulWidget {
  const DirectoryPage({Key? key}) : super(key: key);

  @override
  State<DirectoryPage> createState() => _DirectoryPageState();
}

class _DirectoryPageState extends State<DirectoryPage> {
  final nameList = [
    "Jerome A. Hebert",
    "Adam V. Acker",
    "Stanley M. Dyke",
    "Ben J. Mathison",
    "John V. Bailey",
    "Antonio J. Thomas",
    "Jerome A. Hebert",
    "Adam V. Acker",
    "Stanley M. Dyke"
  ];
  final photoList = [
    "https://image.shutterstock.com/image-photo/young-beautiful-happy-businesswoman-sitting-260nw-165623561.jpg",
    "data:image/jpeg;base64,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",
    "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBESERgSEhIQEREREREPERESERERERESGBgZGRgYGBgcIS4lHB4rHxkYJjgmLS8xNTU1HCQ7QDs0Py40NjEBDAwMEA8QHBISGDElISExNDU0NjQ2NDE0MTExNDExNDQxNDExNDExNDQ0MTE0NDQ0NjQxNDQ0NTQ0NDQ0NDQ0NP/AABEIALcBEwMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAABAAIDBAYFBwj/xABBEAACAQIDBAgEAggEBwEAAAABAgADEQQSIQUxQVEGBxMiYXGBkTKhscFCghQjUmJykrLCU6LR4TM0Y5Oj8PEV/8QAGQEAAwEBAQAAAAAAAAAAAAAAAAECAwQF/8QAIxEBAQACAgICAgMBAAAAAAAAAAECEQMhEjEyQSJRBGFxE//aAAwDAQACEQMRAD8A9YiihlMyEMEMAURigMABjTCTAYEEBiigAMhxFZERndgqIpZmO5QOMlM8x6y9tZqgwiNZaQz1DfQ1GAKqQOIBG/8AagJNpdt9YbpUIwyU+ytZXqBy7tp3gARlG/Q6/SZ1On+0Q5UVUObv3enTdVF/wm27h4XmfeuCtwnaH8S2J08xunPTaJTQUlAsV0LZgL7xfjI8mnhHpOxesDEdsgxXZtRd1QsqrTNPNoGtxF/kd89AfamHWoKRqoKjfChdQWPIC8+acRi2a17ALcDKMtrx741mAJZi/F8xzHS2p8o5SuEfThMBMzHQHalTE7PR6r53DPSLn4iENhm5ta2vGaPNLY068IjAY68AdeMJiJjSYERMjMcTGNGRRpiigRQGGAwBjSJpI0jaNNROJA4llpA0aKrtGmSMIwiNNR2ijrRQLTciOjYRMneMMEUAUaTCTGwBGAwxpgRQRQEwAGeH9I07Ta1Wmxyh8VlaxJ7pyjS/Ge3meWdM9jO+2qHZixxRpNm4ApcOfRUBk5el8fyei4TZdBKaoiIqKoUAAWAtOfj9hYd75qaNv3oI/EdJcLQY06jVRk7pcUajpceKgx42vh61JqlOorIuhaxW3mDqJyZSaehjvemL2v0cwi3K0kBPJRaebdIsAtCoAmisLheA8p6ftrpLgFuoqF2FwRTRnI87Cw955/0s/WKmITVNUOhBU8LiPh8pe08/hZ+Pt6F1Vk//AJ1yFAOIqlbHW3dBv6gzaBpj+gAybNordSSHdrEGxd2YX5GxGk0Xbztnp5Od/KuhnhDyitWSLUj0Xkslo0mRB4c0D2eTGkwEwXgRQwRQBQExXjGMAaxjTCY0xpBpCwkxkbRpqFhI2EmIjHEabEMUfaCBNpHCNhmTuOgMUEAUEUUCAxpMJjTABBEYIyGch8OjV6JKE1KVSrUz2FlDpUUi/ibaeE6shq2VgbaltT6H/eY80t1Z9Oj+PZNy/bg7d6ONiA366upZlYBahpqoW/dAsRY3uTbNoNRG19jChgKqEl2KFrkk2PAA+E6u0seVyqpVcxsXfRUH3PITP9Iuk9OnRemLPcBVbvXbS5vpv36Tmsld03JtlaPRyo9NXSo6sA1yjsquTe2ZQbd3h87yltTZzChkqd89pTZrAAuA633cSLzt9GtuoyFLgZjohPeXT58ZR2nWNR8q72dFUeJYAQxuXlos5h47i30TqfGyaUzTpgC2UZgWG7wAPuJoRXnLwWH7FMml7kmxv4D5ASVXnfxzWMleN/IzmXJbPTqJVk6VJy6byyjy2MrpK8eHlJXkqvEuVbVo4GV1aSK0RypLxEwAxXgZGMMJjSY0gY0wmAwAGNMJgMCMaRsJIYwiNNR2ijrQRk2EUUUydhRRQEwAwQXjSYASYwmG8aTGQExXgJivAhlfGKxQlQSy2dQN5tvHqLj1k14CYrN9HLq7cPEqmICLm7mdXupF9AbC/DWcfpAXp2RaWLqC189OuQBc7iCdPSdHbGEq03FfDMtnGc0z8D8CVI3E8eHHzzGP6UYpbipSqKPDUe6zhuNmVj1sOT8Zf24b4II/aPcMGBVSFuvmQLkyXZANbErxFNu3qEbgBfIPVrexnIx2LxFdyW7oLXBYjTyG+aPYFJcJh2r1LrTd6ado27vEgO3JcxVb8L8tZrx4/lNuXnyvjfGOzXaQqZLVlcGdzyFtGlhGlNDLKGILSNJ0aVUMmQwC0hkqmVkMnUxLiYGEmRgxXgZ14ILxXgCgMRMBMAEaYSYIEBjSI6IiMjLRRRQJq4Y0GKZusbwGC8BMZCTGExEwQBExpMRMBMCImNlDaO2cLhtK1ZEa1wmrOfyLc+sx22+sA6pg6duHbVAL/kT7n2gJLW4xuOpUEz1qiU04F2C3PIDex8BMJ0n6aF0anhCyoVOasQVdhbUIDqo8Tr5TD4rGVKj9pVd6rneWa5tyF9APAQV6hKn+E+ukm1pMX0LhcJTbDU0sMgpUwg3ZQFAFjwmR6U7FCLfPTysdM9RKbDn8RAPp7TUYfEFMKhpKaj9mi01v8RC2BY8F4k/eeWdOdi4qkj4rEVRXFQspNtaVSxZUUbslgQLbra85F48c722x5MsJ16dzZ/RGmAKtRkqgjMiIwelbmWGj+Q085X6fME2bWH7SoijxLrKPVrsqvTTtBUcU6wDtSNzSYHUMBwa34h85a6y7HAvY7qlND551BHna59ITGY9Qssrl3XnWxek9XDgU3Bq0QLBSbOg5I3LwPymu2ft3D17BHyufwP3H8hwb0JnmxpnhJUTTW31mkysYZcWOT1pGllGnmmA25iaVgHzoPwVLtp4HePeaTAdLKTnLVVqJOga/aJ6kC49reMqZSsMuLKf21yNLCGc7C4hHUOjK6MLqykEEecuo8pktqZMplVGk6tBUTgxXjAYbxKOigvFeAKAwwQAGC0dFAgAiMdAYBHaKOijJpLwXjYpDoG8BMF4oAojFFAATMx082i9HCZabMj1n7MMpKsqWJYqRqDuH5ppiZ5h1gbUNXEdiBanhrrfi9RrFz5CwHvFTxm6yGdm77MWZgCzMSzMeJJO8xuaR0n0I/ZZh87/eOkttEDrC3wnyMbJIg976PG+EoWNwMPS15sUB+8xnWzXslKiDplquw5sQgB/r9zNL0DxHabOoniKaofNRb7TEdaT3xaL/ANJT7u9/oJfF8k5/F1eq7aIq7PZD8eFfsT4pbMh9jl/LKXWo+TZ9CmN9TEmo3iFR/u6+05fVY5Spi0vo9Cm9vFHI/vMPW5ir1MPSB+Cg1QjxdgB8k+cWU1lpWN3i86VIaa7+QIHrHnQE8heFVsvjvPmd8QG0Yxt9YbyvUfTzNvb/AOwDa9A8UTRdCdEq5l8A6gke4J9ZsadSeVdGMd2WJW5stX9U3K5PdJ9dPUz0ahWmmN6cfNjrL/XYR5YVpz6Ty0jymUW1aOzSFWj1gpIDHRghiM6KCKAG8V4IoA6AxRGAMihijJobwRXivIdAExRQXgDowmImNJgEOOxS0aT1W+GmjOfGw0HqbD1nie0MS1R2qM3fdmdrcybn6z0jrCxgTCLT41qii3EoneJ/mye88mxLljYC3jyirTCfaNGs5B4i/qND9pODOa5KOtzfXKT56f6S+slZ145WkTwo0QexdVdfNgMvGnWqJ88w+TCZfrFcfpaseFFj/wCWqo/pMudUON72Iw54PTrr+YFTb+Qe843WI5bFhOSFT/3qx/umnF8k8noerEE4iv44RyB5Ok4vWDiu02i9jdaa0qK+GRFzD+cv63mg6u3Wlia1RtEp4Cq7+QdCfpPP8bXNSq9RtGqO9Rv4mYsfmYuT5DD0idtQOZufIf72jXriNBuSeeg8hIn0kqLtdD6mLSy+C399fvK7toZOyE6+A0gAC33H52PpPQ9jY7taSOfiZbN/GDZvmDPOmYbiLHnNH0SxxBNBjpq6H+off3lY3tjzY7x3+m9oVJfovOLQedGg80cjqo0nUylReW0aBxIDHRgMN4lHQxohgBhEEQgDoDFAYA2KCKNLQxGC8V5DpKNhvGkwAmNMV5FXrLTRqjmyIjO55KoJPyECeZdPMYauMZAbJh0FK/Nvic+5A/LMTicTrlpi/NpZ2vjKmIqvlNu0d3dubMST6ayumEVBdmb3k1vjNRzsYmRLklqhI14CdXDsGRW5gH3E4O0K+ZvAbhOrhEYIu8Mt0ZTzUkEfKI1qpGKbRvaAxGAajq9xnZbUpAmy10qUjyLBc6/0kesn6b/8/UH7Nh7kt/dMkmKak6Vk+Ki6VRbecpuR6i4mm6YYkVNoVHQ3WotFwRxDU0b7y+L5Iz+Ln0NodhTxA/FiMI2HHk1RC3+QPMrVYndvY2H3M6u1H4cZy6AuSx3DRfuYcnyow+MSZAolKq8kxNa8q3uZCyqHSW1ViAy6i0o1DL+DRraEqwANuYIuD7EQBZ1OjKQY+g/ZOtRDdlbNY7iNxHqCR6ySrVAH6wKfI6yszIfgb8raQFej4HEK6K6/C6hhz14Hx4Tp0HmM6JYu6tRO9DnUfuMe97H+qa2g01lcOeOrp1qLy5Tacui8vU3jQuho5TIEMmWBniOEaI6JQxQQwBQGGAwKo4orxRk7wMN4wGG8huN4LxpgvAHEzMdP8UaeCKA5e2qLTY3tZBd298oH5ppCZ531kYgtVSm3/DpUjWyk2D1HYqL+ACfMwvpWPdYrOqLdRZeLnQH33zh47aGY2XXxk+MXMb1KoPJEOg9pQLU10yPfhewkNztn4Rq9dKSi7VGC+QJ1PoLn0mixlPJicQh4Ymoy/wALHMvyaS9WuFz4p6pAtSpG3g7kAf5Q86PS7CZMR2oGlVAG/jTTX8uX2la62z8/z8f6Z3EU7ajeI1Klx4yctcfWVq1Piu+S0OvcEc5YwWOLmz/FTRKYPNUXKp/lA9pRWpfzEbQOWqDwcEH01/1jxy1dpym4ftKqWaw3sbDw8ZVrVAoyjgLRlXEDMW3/AIV+5lRmLGK3fap0TNeEHSJVgeAS4Kh2lRV4E3byGpna2mqoVe2mXJYfu6j5E+0obAW9RjyQ/MidvadAPRYEgEWZSeJHDzIuJWumeWWso4K4onXIlubm0LVQR3qK253y/USVUG4AArzsTbwvG1SLaGxHI2vJaDs3Gfo9Zai6qLhkzAkI2hsR7+gno2HqAgEG4IBB5g6ieXVDrc8dxA1HhNz0YxIfDKPxU70m9NV9MpErGsebHrbUUXl2k85VF5epPNHI6VN5OrSjTeWUaAWA0cDIlMeDBSQGERgMN4gdGMYS0YxjKleKMvFAneEdeRho68luJjTDeAmAAzwzpriKlXG1nrtZUqvQpUrkdymxQXsLnQX9Z7kZ5d1ibHCYtcTbuV0A3aLVXRvUjKfQxZel4XthUwyMAOzFzrcgqAOF7G9/C8rYmkCctMKQNLB73P8ACd3vO0w4X03b7RoKLuAAAvpIbtZ1b4E08I9RlyvVrMNd5RAAv+YvB0vF0Twqf2tON0J2oaVdw5KUK66ZiAoqAjIfC4uNf3eU7XS0gU1v/iafytL3+Lmss5YyOJZQPHmJAlTnC7a3lcg3kOlJVpcV0Ml2Zs2tiqy4ejkWrUDqGqNkVQFLMb772UjQSEP7z0notsHZuKwaBKlRcQGWtUr0qipiErKNVBKnKovuA5HU6ycsvGKwx8qzOyurPF1KlsS9OhSDWYqwqO4B/Ao0F+ZIty4S5tjqwdO9hKwqKB8FbutfwZRb5DznqNBVRbZqj20zuczN47gL+QjmdbazC8l/bq/44+tPnXF7KxNIlalCshXeSjFfMMNCPEGU1wrHeQPmZ9EYnEhVJGXcb8LzxrpRhlp1u0QKEqMxsosobjYcjLw5fK6sZcnB4zcrjYMFCcrFSdCd9x9oatQtoxLWJykkkjyvI2qSJ3mzn0tO4Kg8VFvMf6ysz3jkcWN9/DxkcDI+M2XROgUoFj+Nyw/hACj5gzkbL6P1KlmqXp099jo7DwH4fM+019KmFAVQAqgKoG4AbhKxjDlymtRbptLlJpz0Mt0mluaujSeWkaUKbS1TaMlxTJAZAhkqwCQGGNEN4GRMYxhJkbGBFeKMvDGHdBhDSMmHNIa7SZobyINHXgeziZQ23sxMXQai+mbvI9rlHHwsPuOIJHGXYCYHt4bjtnVcPWenXGV0OlvgZTudTxB5yjXrJla4zKMoI3A34fKex9KdhJjaOQ2Wql2o1P2W/ZPNDxHkd4nkOJwxRuzqKVdHIKEah1018tZNmm+OW0aZ3FiqKp/BbMSPG+kkrPXqIKbu+RCcgOXuDTQHfbQDWOFh94c3lJVpTSg3+IfUf7yZKVt5v7ydMG1ZwlNGepwCA3t424ajfprNHsvoJjag/WZMMnNmFV/RVP1Ik5ZSe6vHHLL1GTr5VHjPUOg20albA01ODvSpE4ZalMJdioBZwDY6k6kX72bxkGE6vMJTbPiKlTEW3If1VO/M5TmPle3nK22ulq4XEJg8Mf0ejSCiuy0lFOira91QASbEHlrfXWZ5ZTPqN8Mbh3emjr19576KtxZrr9Zzqu1FGgLk8rsfrM9j+l+GDA/pT1yN2an3fYC04WO6X0zfIruTvJARf/fSYzjyv03y5sZ9tXidqA3uLAA6EnfMbtte1ptUU5uyKu5G5QxyAeGrbvA8jOBj9pVK2jGy7wq7vM85YoYhBhyhepcs16S91WNu47tbUC503m3CbYcfj25s+by6UCYISOfD1mqwGyaK2JXOd93sw/l3TeTbmyymPtwtm7Kq1jdRZeLtovp+16TX7O2LRo2YDO4/G+pB/dG5fr4y3SEnEqY6c+XJciihgIlMzkMs0zKyCWaYgVW6ZlumZSSWUMaV1GkymVUMnQwCa8RaR3gvAHkxhMRMYTGVo3ijbxQDvXjYopLU4RwMUUDggxrRRRGjaZjpT0aTFqalOyYkDuPuWpbcrj6NvHlpFFCluyvLqlN1JV9HBZStwdVNjqNN8IaKKZ12R6P0NoLQpAgKalWnSru1tbVBmRb8ghU+bNNXSxI3kX+0UU4eS3yr0OKTwic4hW0P0ma6QUcFSY12w1J30Y1GTNxZgSOJBvw5RRQlp2TTxHEZWdiu4uxHDQkkfKQ5Yop3POILHARRQAjSbylFFKjHl+lynJxFFKc9OEIWKKMkiLJ0EUUCTpJ0MUUZLCGSq0UUZHhoC0UUABaC8UUCCKKKAf/Z",
    "data:image/jpeg;base64,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",
    "data:image/jpeg;base64,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",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1my37SvAuEZ3wqzRRcSlmQvdZS3V5r9rvFw&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_dn2jhjbm1AvtfQUI1uE31guOtRV_M2zMzA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSobvnMKSeJSKrg0DjnaSC4llKa-4wxRDDK4w&usqp=CAU",
    "https://images.unsplash.com/photo-1573496359142-b8d87734a5a2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8cHJvZmVzc2lvbmFsJTIwd29tYW58ZW58MHx8MHx8&w=1000&q=80",
  ];
  final emailList = [
    "Jerome@veltrix.com",
    "Adam@veltrix.com",
    "Stanley@veltrix.com",
    "Ben@veltrix.com",
    "John@veltrix.com",
    "Antonio@veltrix.com",
    "Jerome@veltrix.com",
    "Adam@veltrix.com",
    "Stanley@veltrix.com"
  ];

  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Responsive.isMobile(context)
                ? Wrap(
                    children: List.generate(9, (index) => _profileCard(index)),
                  )
                : Responsive.isTablet(context)
                    ? Wrap(
                        children: List.generate(
                          9,
                          (index) => SizedBox(
                            width: MediaQuery.of(context).size.width * .45,
                            child: _profileCard(index),
                          ),
                        ),
                      )
                    : Wrap(
                        children: List.generate(
                          9,
                          (index) => SizedBox(
                            width: MediaQuery.of(context).size.width * .25,
                            child: _profileCard(index),
                          ),
                        ),
                      ),
          ],
        ),
      ),
    );
  }

  Widget _profileCard(int index) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 44,
                  backgroundColor: Colors.grey.shade300,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                      "${photoList[index]}",
                    ),
                    radius: 40,
                  ),
                ),
                FxBox.w16,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${nameList[index]}",
                      style: const TextStyle(
                        color: ColorConst.primary,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    const Text(
                      "Creative Director",
                      style: TextStyle(
                        color: const Color(0XFF5B626B),
                      ),
                    ),
                    FxBox.h8,
                    Text(
                      "${emailList[index]}",
                      style: const TextStyle(
                        color: const Color(0XFF5B626B),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  children: [
                    const CircleAvatar(
                      radius: 15,
                      backgroundColor: ColorConst.primary,
                    ),
                    FxBox.h10,
                    const CircleAvatar(
                      radius: 15,
                      backgroundColor: ColorConst.blue,
                    ),
                  ],
                ),
              ],
            ),
            Divider(
              color: Colors.grey.shade300,
              height: 36.0,
            ),
            RichText(
              text: TextSpan(
                text:
                    'Intro : At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis atque corrupti quos dolores et...  ',
                style: DefaultTextStyle.of(context).style,
                children: const <TextSpan>[
                  TextSpan(
                    text: 'Read More',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0XFF626ed4),
                    ),
                    mouseCursor: SystemMouseCursors.click,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
