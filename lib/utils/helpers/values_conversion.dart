/// TRANSFORM ACCORDING TO API OUTPUT VALUE DEFINITIONS ///

class ValuesConversion {
  /// CLOUD COVER ///
  String cloudCoverOutput(String cloudCover) {
    String outputString = '';
    switch (cloudCover) {
      case '1':
        {
          outputString = '0-6%';
        }
        break;
      case '2':
        {
          outputString = '6-19%';
        }
        break;
      case '3':
        {
          outputString = '19-31%';
        }
        break;
      case '4':
        {
          outputString = '31-44%';
        }
        break;
      case '5':
        {
          outputString = '44-56%';
        }
        break;
      case '6':
        {
          outputString = '56-69%';
        }
        break;
      case '7':
        {
          outputString = '69-81%';
        }
        break;
      case '8':
        {
          outputString = '81-94%';
        }
        break;
      default:
        {
          outputString = '94-100%';
        }
        break;
    }
    return outputString;
  }

  /// SEEING ///
  String seeingOutput(String seeing) {
    String outputString = '';
    switch (seeing) {
      case '1':
        {
          outputString = '<0.5"';
        }
        break;
      case '2':
        {
          outputString = '0.5-0.75"';
        }
        break;
      case '3':
        {
          outputString = '0.75-1"';
        }
        break;
      case '4':
        {
          outputString = '1-1.25"';
        }
        break;
      case '5':
        {
          outputString = '1.25-1.5"';
        }
        break;
      case '6':
        {
          outputString = '1.5-2"';
        }
        break;
      case '7':
        {
          outputString = '2-2.5"';
        }
        break;
      default:
        {
          outputString = '>2.5"';
        }
        break;
    }
    return outputString;
  }

  /// TRANSPARENCY ///
  String transparencyOutput(String transparency) {
    String outputString = '';
    switch (transparency) {
      case '1':
        {
          outputString = '<0.3';
        }
        break;
      case '2':
        {
          outputString = '0.3-0.4';
        }
        break;
      case '3':
        {
          outputString = '0.4-0.5';
        }
        break;
      case '4':
        {
          outputString = '0.5-0.6';
        }
        break;
      case '5':
        {
          outputString = '0.6-0.7';
        }
        break;
      case '6':
        {
          outputString = '0.7-0.85';
        }
        break;
      case '7':
        {
          outputString = '0.85-1';
        }
        break;
      default:
        {
          outputString = '>1';
        }
        break;
    }
    return outputString;
  }

  /// LIFTED INDEX ///
  String liftedIndexOutput(String liftedIndex) {
    String outputString = '';
    switch (liftedIndex) {
      case '-10':
        {
          outputString = '<-7';
        }
        break;
      case '-6':
        {
          outputString = '-7 to -5';
        }
        break;
      case '-4':
        {
          outputString = '-5 to -3';
        }
        break;
      case '-1':
        {
          outputString = '-3 to 0';
        }
        break;
      case '2':
        {
          outputString = '0 to 4';
        }
        break;
      case '6':
        {
          outputString = '4 to 8';
        }
        break;
      case '10':
        {
          outputString = '8 to 11';
        }
        break;
      default:
        {
          outputString = '>11';
        }
        break;
    }
    return outputString;
  }

  /// 2M RELATIVE HUMIDITY ///
  String rh2mOutput(String rh2m) {
    String outputString = '';
    switch (rh2m) {
      case '-4':
        {
          outputString = '0-5%';
        }
        break;
      case '-3':
        {
          outputString = '5-10%';
        }
        break;
      case '-2':
        {
          outputString = '10-15%';
        }
        break;
      case '-1':
        {
          outputString = '15-20%';
        }
        break;
      case '0':
        {
          outputString = '20-25%';
        }
        break;
      case '1':
        {
          outputString = '25-30%';
        }
        break;
      case '2':
        {
          outputString = '30-35%';
        }
        break;
      case '3':
        {
          outputString = '35-40%';
        }
        break;
      case '4':
        {
          outputString = '40-45%';
        }
        break;
      case '5':
        {
          outputString = '45-50%';
        }
        break;
      case '6':
        {
          outputString = '50-55%';
        }
        break;
      case '7':
        {
          outputString = '55-60%';
        }
        break;
      case '8':
        {
          outputString = '60-65%';
        }
        break;
      case '9':
        {
          outputString = '65-70%';
        }
        break;
      case '10':
        {
          outputString = '70-75%';
        }
        break;
      case '11':
        {
          outputString = '75-80%';
        }
        break;
      case '12':
        {
          outputString = '80-85%';
        }
        break;
      case '13':
        {
          outputString = '85-90%';
        }
        break;
      case '14':
        {
          outputString = '90-95%';
        }
        break;
      case '15':
        {
          outputString = '95-99%';
        }
        break;
      default:
        {
          outputString = '100%';
        }
        break;
    }
    return outputString;
  }

  /// 10M WIND SPEED ///
  String speedOutput(String speed) {
    String outputString = '';
    switch (speed) {
      case '1':
        {
          outputString = '<0.3m/s';
        }
        break;
      case '2':
        {
          outputString = '0.3-3.4m/s';
        }
        break;
      case '3':
        {
          outputString = '3.4-8.0m/s';
        }
        break;
      case '4':
        {
          outputString = '8.0-10.8m/s';
        }
        break;
      case '5':
        {
          outputString = '10.8-17.2m/s';
        }
        break;
      case '6':
        {
          outputString = '17.2-24.5m/s';
        }
        break;
      case '7':
        {
          outputString = '24.5-32.6m/s';
        }
        break;
      default:
        {
          outputString = '>32.6m/s';
        }
        break;
    }
    return outputString;
  }
}
