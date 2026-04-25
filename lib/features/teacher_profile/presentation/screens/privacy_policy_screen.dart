import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  final VoidCallback onBack;
  const PrivacyPolicyScreen({super.key, required this.onBack});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF0F5E1),
      body: Column(
        children: [
          _buildTopBar(),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ── Header ──
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      IconButton(
                        onPressed: onBack,
                        icon: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Color(0xFF000000), width: 1.5),
                          ),
                          child: const Icon(Icons.arrow_back,
                              size: 30, color: Color(0xFF000000)),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(
                              'Privacy Policy',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF000000),
                              ),
                            ),
                            Text(
                              'Control who can see your progress',
                              style: TextStyle(
                                fontSize: 18,
                                color: const Color(0xFF000000),
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 48), // Spacer to balance back button
                    ],
                  ),
                  const SizedBox(height: 16),

                  // ── Content Sections ──
                  _buildSectionTitle('Purpose'),
                  _buildSectionContent(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ullamcorper ipsum in aliquet sollicitudin. Proin vitae neque at sem dapibus congue in sed risus. Pellentesque a augue in est iaculis maximus. Integer sit amet sagittis tortor, ac pellentesque felis. Duis elementum ex iaculis, aliquet massa nec, ullamcorper mi. Maecenas quis malesuada turpis. Praesent purus dui, dictum eget luctus ultrices, euismod pulvinar dui. Praesent ornare efficitur metus gravida egestas.',
                  ),
                  const SizedBox(height: 19),
                  _buildSectionTitle('Introduction'),
                  _buildSectionContent(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ullamcorper ipsum in aliquet sollicitudin. Proin vitae neque at sem dapibus congue in sed risus. Pellentesque a augue in est iaculis maximus. Integer sit amet sagittis tortor, ac pellentesque felis. Duis elementum ex iaculis, aliquet massa nec, ullamcorper mi. Maecenas quis malesuada turpis. Praesent purus dui, dictum eget luctus ultrices, euismod pulvinar dui. Praesent ornare efficitur metus gravida egestas.\n\n'
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ullamcorper ipsum in aliquet sollicitudin. Proin vitae neque at sem dapibus congue in sed risus. Pellentesque a augue in est iaculis maximus. Integer sit amet sagittis tortor, ac pellentesque felis. Duis elementum ex iaculis, aliquet massa nec, ullamcorper mi. Maecenas quis malesuada turpis. Praesent purus dui, dictum eget luctus ultrices, euismod pulvinar dui. Praesent ornare efficitur metus gravida egestas.\n\n'
                    'Sed varius velit lacus, sit amet convallis ligula feugiat ac. Integer a justo ac mi accumsan pulvinar ultricies at dui. Suspendisse pharetra velit in purus ultrices, non sollicitudin urna maximus. Quisque scelerisque molestie turpis, et lacinia purus pharetra eget. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut felis erat, varius id massa vitae, sollicitudin pharetra turpis. Curabitur facilisis ante in lobortis luctus. Proin in lectus tellus. Sed eget placerat dolor, sagittis posuere ex. Fusce dapibus ipsum ante, vitae condimentum mi bibendum at. Sed vitae elit mauris. Maecenas varius lectus eu tellus maximus, nec cursus tortor efficitur. Nunc nec consequat metus.',
                  ),
                  _buildSectionContent(
                    'Nam faucibus vestibulum dictum. Duis malesuada mi est. Ut justo velit, gravida quis laoreet sit amet, cursus quis est. Sed lobortis purus quis enim placerat cursus. Sed a est porttitor, aliquet arcu quis, hendrerit dui. Nullam vitae rhoncus purus. Nam iaculis arcu et leo lobortis, ut vestibulum elit tristique. Nunc rhoncus porttitor leo eget aliquet.',
                  ),
                  _buildSectionContent(
                    'Integer at mattis erat, nec iaculis arcu. Phasellus pretium euismod maximus. Proin tincidunt, ligula in cursus aliquam, sapien mi condimentum nisi, fringilla dignissim massa metus et nunc. Cras at tellus nibh. Sed elementum eros pretium ex malesuada, at maximus dolor venenatis. Phasellus condimentum facilisis congue. Nunc feugiat nisi vel libero interdum, rutrum maximus nisl mattis. Phasellus convallis nulla sem, eu commodo tortor porta eget. Mauris elementum lobortis mi, ut volutpat nibh congue eu. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec semper nisi lorem, et pulvinar lorem congue eu. Nam ornare, magna non lacinia commodo, quam massa aliquet augue, vel tincidunt massa elit sed odio.',
                  ),
                  _buildSectionContent(
                    'Integer at mattis erat, nec iaculis arcu. Phasellus pretium euismod maximus. Proin tincidunt, ligula in cursus aliquam, sapien mi condimentum nisi, fringilla dignissim massa metus et nunc. Cras at tellus nibh. Sed elementum eros pretium ex malesuada, at maximus dolor venenatis. Phasellus condimentum facilisis congue. Nunc feugiat nisi vel libero interdum, rutrum maximus nisl mattis. Phasellus convallis nulla sem, eu commodo tortor porta eget. Mauris elementum lobortis mi, ut volutpat nibh congue eu. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec semper nisi lorem, et pulvinar lorem congue eu. Nam ornare, magna non lacinia commodo, quam massa aliquet augue, vel tincidunt massa elit sed odio.',
                  ),
                  _buildSectionContent(
                    'Integer at mattis erat, nec iaculis arcu. Phasellus pretium euismod maximus. Proin tincidunt, ligula in cursus aliquam, sapien mi condimentum nisi, fringilla dignissim massa metus et nunc. Cras at tellus nibh. Sed elementum eros pretium ex malesuada, at maximus dolor venenatis. Phasellus condimentum facilisis congue. Nunc feugiat nisi vel libero interdum, rutrum maximus nisl mattis. Phasellus convallis nulla sem, eu commodo tortor porta eget. Mauris elementum lobortis mi, ut volutpat nibh congue eu. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec semper nisi lorem, et pulvinar lorem congue eu. Nam ornare, magna non lacinia commodo, quam massa aliquet augue, vel tincidunt massa elit sed odio.',
                  ),
                  const SizedBox(height: 19),
                  _buildSectionTitle('Changes to This Policy'),
                  _buildSectionContent(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ullamcorper ipsum in aliquet sollicitudin. Proin vitae neque at sem dapibus congue in sed risus. Pellentesque a augue in est iaculis maximus. Integer sit amet sagittis tortor, ac pellentesque felis. Duis elementum ex iaculis, aliquet massa nec, ullamcorper mi. Maecenas quis malesuada turpis. Praesent purus dui, dictum eget luctus ultrices, euismod pulvinar dui. Praesent ornare efficitur metus gravida egestas.',
                  ),
                  const SizedBox(height: 19),
                  _buildSectionTitle('Contact Us'),
                  _buildSectionContent('For privacy-related questions:'),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      'contact@inspectorspath.com',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        color: const Color(0xFF3B82F6),
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(height: 48),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTopBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(bottom: BorderSide(color: Color(0xFFF0F0F0))),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          // const SizedBox(width: 12),
          Row(
            children: [
              const Text(
                'Albert Flores',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF111111),
                ),
              ),
              const SizedBox(width: 13),
              ClipOval(
                child: Image.asset(
                  'assets/images/avatarIcon.png',
                  height: 44,
                  width: 44,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w500,
          color: const Color(0xFF000000),
        ),
      ),
    );
  }

  Widget _buildSectionContent(String content) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        content,
        style: TextStyle(
          fontSize: 18,
          color: const Color(0xFF000000),
          height: 1.4,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}

