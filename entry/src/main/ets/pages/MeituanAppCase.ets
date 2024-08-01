import { MeituanFooter } from './components/MeituanFooter';
import { MeituanHeader } from './components/MeituanHeader'
import { MeituanMain } from './components/MeituanMain';

@Entry
@Component
struct MeituanAppCase {
  build() {
    Column() {
      MeituanHeader();
      MeituanMain();
      MeituanFooter();
    }
  }
}