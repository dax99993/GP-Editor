import 'package:gp_editor/features/effects/data/models/effect.dart';
import 'package:gp_editor/features/effects/data/models/effect_info.dart';

Map<EffectType, List<EffectInfo>> changeEffect = {
  EffectType.pre: [
    EffectInfo(
      name: 'COMP',
      index: 0,
      id: 0,
      description:
          "Based on the legendary Ross™ Compressor. This is the originator of the guitar compression effect. It brings the guitar compression effect to the public and becomes an important element in the future. It has a very natural and mellow compression effect.",
    ),

    EffectInfo(
      name: 'COMP4',
      index: 1,
      id: 1,
      description:
          "Based on the Keeley ® C4 4-knob compressor*. A recording studio - level compression effect.Clear sense of hierarchy, the right amount of high frequency makes your guitar sound brighter.",
    ),

    EffectInfo(
      name: 'S-Comp',
      index: 2,
      id: 3,
      description: "Flexible, fully adjustable compressor effect",
    ),

    EffectInfo(
      name: 'Micro Boost',
      index: 3,
      id: 20,
      description:
          "Based on the legendary MXR® M133 Micro Amp pedal. Providing up to 20dB of gain, the Micro Boost elevates your amp sound without changing its tonal character.",
    ),

    EffectInfo(
      name: 'AC Boost',
      index: 4,
      id: 10,
      description:
          "Based on famous Xotic® AC Booster* pedal, It is a beautiful smooth sounding drive/boost pedal that it perfect for giving your tube amp a bit of extra grunt.",
    ),

    EffectInfo(
      name: 'B-Boost',
      index: 5,
      id: 11,
      description:
          "Any guitarist can benefit from the Xotic® BB Preamp* overdrive pedal. The pedal works equally well for getting thick and creamy overdrive tones with great sustain as it does for pushing the clean front end of an already driven amp with up to 30dB of boost.",
    ),

    EffectInfo(
      name: 'P-Boost',
      index: 6,
      id: 12,
      description:
          "Based famous on Xotic® RC Booster* provides you with super-transparent 20dB boost without altering your carefully crafted tone. And it offers an added gain channel for extra fatness. Take advantage of the +/-15dB range on the treble and bass EQ controls, and imbue your guitar sound with unbelievable harmonic complexity. The EQ controls also compensate for the extra bass boominess the volume boost may cause and are great for matching the response for multiple guitars.",
    ),

    EffectInfo(
      name: '14 Boost',
      index: 7,
      id: 14,
      description:
          "Based famous on Fortin®Grind*. It gives you up to +20dB of boost that will tighten up and add aggression to any tube or solid-state amplifier. The GRIND’s surprising low noise floor and high input Z lets every nuance of  instrument character come through unaltered.",
    ),

    EffectInfo(
      name: 'FAT BB',
      index: 8,
      id: 25,
      description:
          "This is a clean boost and pre-amp with a switchable low-cut filter and separate bass and treble controls.",
    ),

    EffectInfo(
      name: 'Boost',
      index: 9,
      id: 26,
      description:
          "Based on famous Xotic® EP Booster* pedal. Provides +20DB of pure stimulation lift, strong low frequency, bright high frequency, making clear sound more pleasant.",
    ),

    EffectInfo(
      name: 'AC Refiner',
      index: 10,
      id: 16777216,
      description:
          "Designed for acoustic instruments, bringing you a  more natural \"woody\" acoustic sound",
    ),

    EffectInfo(
      name: 'AC Sim',
      index: 11,
      id: 16777217,
      description:
          "Acoustic guitar simulator designed for guitars. Its prototype comes from a classic acoustic guitar analog stompbox.",
    ),

    EffectInfo(
      name: 'T-Wah',
      index: 12,
      id: 16777231,
      description:
          "Control the wah sound by playing intensity.A wide range d envelope filter (a.k.a. touch wah) designed for guitarists and bassists  that is touch-sensitive and flexible",
    ),

    EffectInfo(
      name: 'A-WAH',
      index: 13,
      id: 16777237,
      description:
          "Set the rate to make the wah pedal work regularly. Providing a variable auto wah effect for both guitars and basses.",
    ),

    EffectInfo(
      name: 'Step Filter',
      index: 14,
      id: 16777241,
      description:
          "A 4-step auto filter machine for creating synth-like sounds",
    ),

    EffectInfo(
      name: 'OCTA',
      index: 15,
      id: 16777249,
      description: "Provides polyphonic octave effect.",
    ),

    EffectInfo(
      name: 'Pitch',
      index: 16,
      id: 16777251,
      description: "Polyphonic pitch shifter/harmonizer.",
    ),

    EffectInfo(
      name: 'P-Bend',
      index: 17,
      id: 16777252,
      description: "Polyphonic pitch shifter/harmonizer.",
    ),

    EffectInfo(
      name: 'Ring Mod',
      index: 18,
      id: 16777263,
      description:
          "A ring modulator for creating intresting inharmonic frequency spectra (like bells and chimes.",
    ),

    EffectInfo(
      name: 'Saturate',
      index: 19,
      id: 16777267,
      description:
          "Vintage tape saturation simulater providing analog warmth and natural distortion.",
    ),

    EffectInfo(
      name: 'hammy',
      index: 18,
      id: 16777289,
      description:
          "Based on classic Whammy®* monophonic pitch shifter pedal. Assign the Position parameter to expression pedal, then move the pedal to get the effect.",
    ),

    EffectInfo(
      name: 'Auto Swell',
      index: 21,
      id: 67108909,
      description:
          "This is an auto swell effect with two parameters that are easy to understand and use. It can make the guitar sound like a violin.",
    ),

    EffectInfo(
      name: 'Hold',
      index: 22,
      id: 67108911,
      description:
          "This is a freeze effect that can freeze the sound for a short period of time before the effect is activated and make it play in a loop. The Activate parameter can be assigned to the expression pedal to activate and deactivate the effect; You can also turn on the Activate parameter and use CTRL to directly control the On/Off of the effect module.",
    ),

    EffectInfo(
      name: 'Freeze',
      index: 23,
      id: 67108912,
      description:
          "This is a freeze effect that can freeze the sound at the moment of activation and keep it playing when the effect is activated. The Activate parameter can be assigned to the expression pedal to activate and deactivate the effect; You can also turn on the Activate parameter and use CTRL to directly control the On/Off of the effect module.",
    ),

    EffectInfo(
      name: 'OD 9',
      index: 1,
      id: 50331649,
      description:
          "The Ibanez® Tube Screamer® is synonymous with the transparent overdrive tone used by many of today\'s top guitarists. The TS9 pedal boosts the guitar signal enough to drive the preamp stage of your amp, giving a very natural-sounding and pure overdrive and crisp rhythm crunch.",
    ),

    EffectInfo(
      name: 'Yellow OD',
      index: 2,
      id: 50331650,
      description:
          "Artist of the 70\'s was mostly using a fuzz distortion sound and the overdrive produced by it was not typical. It was however soon accepted as the new standard of guitar sound. It features an asymmetric circuit where the positive and negative halves of the waveform isn\'t distorted equally. The sound is therefore still close to the original even though distortion have been added.",
    ),

    EffectInfo(
      name: 'Penesas',
      index: 3,
      id: 50331668,
      description:
          "Based on the legendary Klon® Centaur*, this overdrive model gives you an authentic amp-in-a-box feel with full, rich sound character that is not harsh or boomy at all. Turn Gain knob to minimum you get a superb clean boost.",
    ),

    EffectInfo(
      name: 'Blues OD',
      index: 7,
      id: 50331657,
      description:
          "Whether it\'s warm and natural overdrive or full open distortion, it gives your guitar the most expression, makes it easy to control the tone, and allows for subtle variations in your personal playing style.",
    ),

    EffectInfo(
      name: 'Super OD',
      index: 5,
      id: 50331654,
      description:
          "The unique asymmetric overdrive effect circuit adds warm and pleasant overdrive effect to the traditional guitar timbre.",
    ),

    EffectInfo(
      name: 'Harmonizer 1',
      index: 24,
      id: 16777293,
      description:
          "This model is a monophonic single voice automatic harmonizer with max one octave pitch shifting range. Detailed Key, Scale and Interval settings can bring you lots of fun. ",
    ),

    EffectInfo(
      name: 'Harmonizer 2',
      index: 25,
      id: 16777294,
      description:
          "This model is a monophonic dual voice automatic harmonizer with max one octave pitch shifting range. Detailed Key, Scale and Interval settings can bring you lots of fun. ",
    ),
  ],
  EffectType.wah: [
    EffectInfo(
      name: 'V-Wah',
      index: 0,
      id: 83886081,
      description:
          "Based on legendary VOX® V846* wah pedal. The earliest wa-wah pedal was originally designed to allow the wind instrument passing through it to produce a more emotionally expressive \"wa-wah\" sound.The amplitude is small and acts between medium and high frequency.",
    ),

    EffectInfo(
      name: 'C-Wah',
      index: 1,
      id: 83886088,
      description:
          "Based on legendary Dunlop® CryBaby®* wah pedal. The classic 60\'s traditional wha pedal, acting between low and medium frequency, moderate amplitude, neutral timbre.",
    ),

    EffectInfo(
      name: 'P-Wah',
      index: 2,
      id: 83886090,
      description:
          "Based on John Petrucci\'s rack wah settings, this Cry Baby® Wah features Volume, Q, and six EQ controls for ultimate tonal control over your wah sound.",
    ),

    EffectInfo(
      name: 'S-Wah',
      index: 3,
      id: 83886086,
      description:
          "Classic wah tone. Just press down and feel the vocal sweep and lush harmonics from the wah\'s classic era. Its like keeping a tiny jimi hendrix in your pocket.",
    ),

    EffectInfo(
      name: 'B-Wah',
      index: 4,
      id: 83886087,
      description: "Wah designed for basses",
    ),

    EffectInfo(
      name: 'hammy',
      index: 5,
      id: 16777289,
      description:
          "Based on classic Whammy®* monophonic pitch shifter pedal. Assign the Position parameter to expression pedal, then move the pedal to get the effect.",
    ),
  ],
  EffectType.dst: [
    EffectInfo(
      name: 'Green OD',
      index: 0,
      id: 50331648,
      description:
          "Based on legenary Ibanez® TS-808 Tube Screamer®* overdrive pedal. Since it was first shown to the world in 1979, TS808 has opened up a new world. There are countless guitarists who love it. It is a warm, delicate overdrive effect.Can be used as either an overdrive or a Boost, can be used in a variety of musical styles.",
    ),

    EffectInfo(
      name: 'OD 9',
      index: 1,
      id: 50331649,
      description:
          "The Ibanez® Tube Screamer® is synonymous with the transparent overdrive tone used by many of today\'s top guitarists. The TS9 pedal boosts the guitar signal enough to drive the preamp stage of your amp, giving a very natural-sounding and pure overdrive and crisp rhythm crunch.",
    ),

    EffectInfo(
      name: 'Yellow OD',
      index: 2,
      id: 50331650,
      description:
          "Artist of the 70\'s was mostly using a fuzz distortion sound and the overdrive produced by it was not typical. It was however soon accepted as the new standard of guitar sound. It features an asymmetric circuit where the positive and negative halves of the waveform isn\'t distorted equally. The sound is therefore still close to the original even though distortion have been added.",
    ),

    EffectInfo(
      name: 'Penesas',
      index: 3,
      id: 50331668,
      description:
          "Based on the legendary Klon® Centaur*, this overdrive model gives you an authentic amp-in-a-box feel with full, rich sound character that is not harsh or boomy at all. Turn Gain knob to minimum you get a superb clean boost.",
    ),

    EffectInfo(
      name: 'Swarm',
      index: 4,
      id: 50331652,
      description:
          "The Providence® SOV-2 Stampede OD pedal is designed to deliver natural overdrive without obscuring the inherent characteristics and tone of the guitar being used. It features a special bipolar power supply that powers the internal circuitry with boosted voltage, providing a wider dynamic range than possible with conventional 9-volt powered overdrives. For singing lead tones and solid, chunky rhythms, there’s nothing like the SOV-2 Stampede OD.",
    ),

    EffectInfo(
      name: 'Super OD',
      index: 5,
      id: 50331654,
      description:
          "The unique asymmetric overdrive effect circuit adds warm and pleasant overdrive effect to the traditional guitar timbre.",
    ),

    EffectInfo(
      name: 'Scream OD',
      index: 6,
      id: 50331656,
      description:
          "Based on Tube Screamer® Style overdrive pedal, with unique timbre characteristics.",
    ),

    EffectInfo(
      name: 'Blues OD',
      index: 7,
      id: 50331657,
      description:
          "Whether it\'s warm and natural overdrive or full open distortion, it gives your guitar the most expression, makes it easy to control the tone, and allows for subtle variations in your personal playing style.",
    ),

    EffectInfo(
      name: 'Tube',
      index: 42,
      id: 50331659,
      description: "Based on the legendary B. K. Butler® Tube Driver®*.",
    ),

    EffectInfo(
      name: 'Force',
      index: 8,
      id: 50331658,
      description:
          "Fulltone® OCD* sounds like finding the “sweet spot” on your favorite amp. It produces overdriven tones that sound warm and full, with genuine tube-like response. There’s no shortage of usable drive, meaning it dynamically ramps up overdriven grit from dirty overtones to saturated distortion in the smooth range of its drive control.",
    ),

    EffectInfo(
      name: 'Blues Master',
      index: 9,
      id: 50331662,
      description:
          "The Marshall® BluesBreaker* is a low-gain pedal with exceptional transparent tone. Moderate overdrive and subtle boost are the strong points, though it can get as well emphatic with a cranked up tube amp.",
    ),

    EffectInfo(
      name: 'Master OD',
      index: 10,
      id: 50331663,
      description:
          "The EQ stage is extremely wide, offering treble, mid and bass shaping options and the gain stage goes from clean to a well driven JCM800 kind of tone and that is also where its magic lies.",
    ),

    EffectInfo(
      name: 'TaiChi OD',
      index: 11,
      id: 50331664,
      description:
          "Hermida® Zendrive® rose to fame because of its tube-like tone. To get the perfect balance of saturation and harmonics required to result in all of the \'in-tangibles\' that make a pedal overdrive sound like a real amp overdrive. Things like touch sensitivity and response to guitar tone and volume control changes.",
    ),

    EffectInfo(
      name: 'Timmy OD',
      index: 12,
      id: 50331678,
      description:
          "Paul Cochrane® Timmy* overdrive was one of the original boutique overdrive pedals, generating a dedicated following based on its open, un-compressed drive tone and good EQ options.",
    ),

    EffectInfo(
      name: 'Precise OD',
      index: 13,
      id: 50331676,
      description:
          "Horizon Devices® Precision Drive* overdrive. Perfect modern metal rig with precise tonal carving controls. The built-in noise gate ensures the cleanness and clarity of tone.",
    ),

    EffectInfo(
      name: 'Lazaro',
      index: 14,
      id: 50331682,
      description:
          "Based on legendary Electro-Harmonix®Big Mu Pi®*fuzz/distortion pedal. It is very individual, warm and thick sound wall, restless but full of beauty.",
    ),

    EffectInfo(
      name: 'Red Haze',
      index: 15,
      id: 50331684,
      description:
          "Based on legendary Dallas-Arbiter® Fuzz Face®* fuzz pedal. Dallas Arbiter conjured the sound of rock and roll for half a century in 1966 with a few simple transistors. The sound of Fuzz Face was heavy and sharp, and its sound influenced countless famous musicians.",
    ),

    EffectInfo(
      name: 'Sora Fuzz',
      index: 16,
      id: 50331686,
      description:
          "For fans of the aggressive germanium fuzz tones that could be wrought from those early units, there’s nothing quite like the Sola Sound® Tone Bender*. The Tone Bender’s circuit became massively popular, and over the following years its design rapidly evolved, making for a tangled and winding history that is intertwined with some of the most formative music made in the U.K. from the mid 1960s to the early ’70s.",
    ),

    EffectInfo(
      name: 'Plustortion',
      index: 17,
      id: 50331689,
      description:
          "This little yellow box has produced lots of great soundings in countless classic studio albums. Yeah, we’re talking the legendary MXR® M104 Distortion +*, and this M104-based Plustortion. The Plustortion recreated the Germanium-powered soft clipping distortion, like what Randy Rhoads and other hard rockers do!",
    ),

    EffectInfo(
      name: 'SM Dist',
      index: 18,
      id: 50331690,
      description:
          "It is based on a classic orange three-knob distortion effector, which can be used to easily get the timbre characteristics of the 70s-80s.",
    ),

    EffectInfo(
      name: 'Darktale',
      index: 19,
      id: 50331691,
      description:
          "Based on legendary ProCo™ The Rat* distortion (early LM308 OP-amp version). The Rat* has come to life thanks to its wide range of Filter knob, bright and compact sound head, full end and strong plasticity, making it a favorite of many musicians.",
    ),

    EffectInfo(
      name: 'Chief',
      index: 20,
      id: 50331693,
      description:
          "The Marshall® Guv\'nor* was released in 1988 and in production during 4 years. This overdrive/distortion Made in England effect replicates the classic tube Marshall® Amp sound into compact and solid state box featuring a sustainable gain with a touch of compression.",
    ),

    EffectInfo(
      name: 'Master Dist',
      index: 21,
      id: 50331694,
      description:
          "The Marshall Shredmaster Distortion guitar effect pedal delivers face-melting distortion and that tone you can only get out of a Marshall. The pedal offers treble, bass, and contour knobs to tweak, twist, and deliver an unbelievable performance.",
    ),

    EffectInfo(
      name: 'La Charger',
      index: 22,
      id: 50331696,
      description:
          "Based on MI Audio® Crunch Box®* distortion peal. Sensitive and exquisite distortion beast, it satisfies all the passion of Riff and Solo.The response of each frequency band is balanced, the dynamic feedback is faithful to the fingertip, and the noise can be well controlled even at high gain.",
    ),

    EffectInfo(
      name: 'Flex OD',
      index: 23,
      id: 50331711,
      description:
          "A simple and effective distortion effect for guitars and basses.",
    ),

    EffectInfo(
      name: 'Bass OD',
      index: 24,
      id: 50331712,
      description:
          "This is an overload effect device specially designed for bass. It combines the original bass sound with a unique overdrive effect to make a very good distortion effect while ensuring The original bass dynamic tone. It can also be used as a pretty good boost.",
    ),

    EffectInfo(
      name: 'Black Bass',
      index: 25,
      id: 50331716,
      description:
          "Based on the Darkglass® Microtubes B7K*. Takes the powerful dynamic saturation circuit and adds a four-band equalizer and a balanced line driver for even greater versatility. Designed for both studio and live use, it will take your direct sound to a whole new level.",
    ),

    EffectInfo(
      name: 'Micro Boost',
      index: 26,
      id: 20,
      description:
          "Based on the legendary MXR® M133 Micro Amp pedal. Providing up to 20dB of gain, the Micro Boost elevates your amp sound without changing its tonal character.",
    ),

    EffectInfo(
      name: 'AC Boost',
      index: 27,
      id: 10,
      description:
          "Based on famous Xotic® AC Booster* pedal, It is a beautiful smooth sounding drive/boost pedal that it perfect for giving your tube amp a bit of extra grunt.",
    ),

    EffectInfo(
      name: 'B-Boost',
      index: 28,
      id: 11,
      description:
          "Any guitarist can benefit from the Xotic® BB Preamp* overdrive pedal. The pedal works equally well for getting thick and creamy overdrive tones with great sustain as it does for pushing the clean front end of an already driven amp with up to 30dB of boost.",
    ),

    EffectInfo(
      name: 'P-Boost',
      index: 29,
      id: 12,
      description:
          "Based famous on Xotic® RC Booster* provides you with super-transparent 20dB boost without altering your carefully crafted tone. And it offers an added gain channel for extra fatness. Take advantage of the +/-15dB range on the treble and bass EQ controls, and imbue your guitar sound with unbelievable harmonic complexity. The EQ controls also compensate for the extra bass boominess the volume boost may cause and are great for matching the response for multiple guitars.",
    ),

    EffectInfo(
      name: '14 Boost',
      index: 30,
      id: 14,
      description:
          "Based famous on Fortin®Grind*. It gives you up to +20dB of boost that will tighten up and add aggression to any tube or solid-state amplifier. The GRIND’s surprising low noise floor and high input Z lets every nuance of  instrument character come through unaltered.",
    ),

    EffectInfo(
      name: 'FAT BB',
      index: 31,
      id: 25,
      description:
          "This is a clean boost and pre-amp with a switchable low-cut filter and separate bass and treble controls.",
    ),

    EffectInfo(
      name: 'Boost',
      index: 32,
      id: 26,
      description:
          "Based on famous Xotic® EP Booster* pedal. Provides +20DB of pure stimulation lift, strong low frequency, bright high frequency, making clear sound more pleasant.",
    ),

    EffectInfo(
      name: 'Empire OD',
      index: 33,
      id: 50331728,
      description:
          "Based on Analog.Man™ Prince of Tone* Overload effect, multi-mode selection, large tone adjustment range to suit different scenes.",
    ),

    EffectInfo(
      name: 'Revolt',
      index: 34,
      id: 50331698,
      description:
          "Based on the Suhr® Riot Distortion™* pedal,Three knobs and a tone selection switch, easy to use, large adjustable range is very suitable for a variety of playing scenes.",
    ),

    EffectInfo(
      name: 'Flagman Dist',
      index: 35,
      id: 50331730,
      description:
          "This model is based on a famous dirt box recreating, perfect reproduction of modern British high-gain timbre, rich tunability, intuitive operation to provide the perfect boost to your music.",
    ),

    EffectInfo(
      name: 'Bass Hammer',
      index: 36,
      id: 50331729,
      description:
          "Based on the famous Aguilar® Tone Hammer* Front effect, with two sounds Color, three-stage equalization and mid-frequency sweep frequency regulation, high timbre regulation, is a good shape for timbre.",
    ),

    EffectInfo(
      name: 'DST Empty 1',
      index: 37,
      id: 251658245,
      description: "For importing and using the.nam file.",
    ),

    EffectInfo(
      name: 'DST Empty 2',
      index: 38,
      id: 251658246,
      description: "For importing and using the.nam file.",
    ),

    EffectInfo(
      name: 'DST Empty 3',
      index: 39,
      id: 251658247,
      description: "For importing and using the.nam file.",
    ),

    EffectInfo(
      name: 'DST Empty 4',
      index: 40,
      id: 251658248,
      description: "For importing and using the.nam file.",
    ),

    EffectInfo(
      name: 'DST Empty 5',
      index: 41,
      id: 251658249,
      description: "For importing and using the.nam file.",
    ),
  ],
  EffectType.amp: [
    EffectInfo(
      name: 'Tweedy',
      index: 0,
      id: 117440513,
      description:
          "Based on Fender® Tweed Deluxe*. This amplifier with a dynamic range from clean to wild overdrive, from country rock to distortion, the Fender® Tweed Deluxe* has been a totem in every style for more than 60 years.",
    ),

    EffectInfo(
      name: 'Bellman 59N',
      index: 1,
      id: 117440515,
      description:
          "Based on Fender® ’59 Bassman®*. The most dramatic speaker in the history of Rock&Roll, originally designed for bass, has become the most classic guitar speaker.As clear as water, Vacuum tubemakes the sound more beautiful,make musical instrument manufacturers are eager to imitate the product.",
    ),

    EffectInfo(
      name: 'Dark Twin',
      index: 2,
      id: 117440516,
      description:
          "Based on Fender® ’65 Twin Reverb®*. With a Stratocaster*, the classic sound can be easily restored in both country jazz and rock music.",
    ),

    EffectInfo(
      name: 'Dark DLX',
      index: 3,
      id: 117440517,
      description:
          "Great clean tones are possible, but the versatile \"sweet distortion\" is what so many guitarists appreciate and love with the Deluxe. Therefore the amp is the number 1 for many blues musicians, as well as for modern super guitarrists. The fender-typical spring reverb and a tube vibrato effect allow even more \"vintage\"- sound variants.",
    ),

    EffectInfo(
      name: 'Dark Vibra',
      index: 4,
      id: 117440521,
      description:
          "The original (6G16 circuit) Vibroverb was introduced in February 1963. The speaker lineup and the output transformer were based on the Fender Super amp of the time and the circuit based on the Fender Vibrolux of the time. The 40-watt amplifier boasted two channels (NORMAL and BRIGHT). Both channels had VOLUME, TREBLE and BASS controls; the single-control REVERB affected only the BRIGHT channel.",
    ),

    EffectInfo(
      name: 'Silver Twin',
      index: 5,
      id: 117440525,
      description:
          "Fender® Silverface Twin Reverb* amplifiers were built between 1967 and 1981. It makes the sound of history.",
    ),

    EffectInfo(
      name: 'SUPDual CL',
      index: 6,
      id: 117440527,
      description:
          "Based on the Supro®Dual-Tone 1624T* (CH1，clean tone). In the mid 60’s , vintage 1624T amps have been sought-after for decades because the Dual-Tone’s volume knob is turned beyond noon, a fat and compressed clean tone evolves into an immediately recognizable grind that remains articulate and listenable even when turned up to full blast.",
    ),

    EffectInfo(
      name: 'Foxy 15TB',
      index: 7,
      id: 117440528,
      description:
          "Based on vintage VOX®* AC-100* bass amp. In 1963, the Beatles was in urgent need of a bass speaker with a volume greater than that of the club\'s crazy shouting, and the AC-100* came into being. With 100W power and 4x12 \"box, it has successfully become the most representative bass voice in the 1960s.",
    ),

    EffectInfo(
      name: 'Foxy 30N',
      index: 8,
      id: 117440529,
      description:
          "Based on VOX® AC30HW* (normal channel). The symbolic clear sound and warm and sharp overdrive, since the day of its birth, has become the Shadows, The Beatles, the Rolling Stones and other group\'s favorite speaker. The British band led the \"British Invasion\" has made VOX® speaker a household name as a British rock icon.Even in hard rock and British rock, Radiohead, Suede, Oasis and other super groups are preferred.",
    ),

    EffectInfo(
      name: 'J-120 CL',
      index: 9,
      id: 117440532,
      description:
          "Based on the legendary “Jazz Chorus” solid state combo. When it came out in 1975, it is the first musical instrument speaker equipped with Chorus effect. It was famous for its pure sound and stereo chorus effect.",
    ),

    EffectInfo(
      name: 'Match CL',
      index: 10,
      id: 117440533,
      description:
          "Based Matchless™ Chieftain 212 combo* (clean tone). MATCHLESS®\'s philosophy since its founding in 1989 has been to make as many top-notch, all-purpose speakers as possible.The crisp graininess and perfect dynamic feedback will make your playing easy.",
    ),

    EffectInfo(
      name: 'L-Star CL',
      index: 11,
      id: 117440537,
      description:
          "Based on Mesa/Boogie® Lone Star™*(CH1). The pre-amp circuit has extraordinary expressive power, the comprehensive timbre and intuitive operation are indicative of Mesa/Boogie®\'s far superior technical capabilities.An engaging and lively timbre experience.It has a more compressed, balanced, soft mid frequency sound, and its high-frequency like gorgeous bell.",
    ),

    EffectInfo(
      name: 'BogSV CL',
      index: 12,
      id: 117440538,
      description:
          "Based on Bogner ® Shiva* (20th Anniversary version, Ch1. Modern optimized circuit, with a double channel treasure house of sound, excellent circuit design makes it have high-frequency transparent and flexible low frequency, crystal clear sound, British higain compact and gorgeous.",
    ),

    EffectInfo(
      name: 'Z38 CL',
      index: 13,
      id: 117440539,
      description:
          "Based on Dr. Z® Maz 38 Sr.* combo (clean sound). With its varied sound, wide frequency response and dynamic range, it is not only an excellent single platform, but it can meet your needs whether you are a British or An American fan.",
    ),

    EffectInfo(
      name: 'Knights CL',
      index: 14,
      id: 117440543,
      description:
          "Based on Grindrod® Pendragon PG20C* (Normal channel, bright off). If you\'re a big fan of British sound/overdrive, this is a sound you can\'t miss.It can bring the pure British style, sound full of penetrating power.",
    ),

    EffectInfo(
      name: 'Bad-KT CL',
      index: 15,
      id: 117440546,
      description:
          "Based on Bad Cat® Hot Cat 30* (clean channel). As the world\'s first use of Class A circuit design guitar speakers, the sound quality has been greatly improved.It combines British and American styles, with rich harmonics and sufficient headroom.",
    ),

    EffectInfo(
      name: 'Solo100 CL',
      index: 16,
      id: 117440547,
      description:
          "Based on Soldano® SLO100* (clean channel). Also from Eddie Van Halen\'s Brown Sound, Steve Vai\'s classic album “Passion & Warfare” was recorded in SLO100*.",
    ),

    EffectInfo(
      name: 'Bellman 59B',
      index: 17,
      id: 117440548,
      description: "Based on Fender® ’59 Bassman®*.",
    ),

    EffectInfo(
      name: 'Foxy 30TB',
      index: 18,
      id: 117440551,
      description: "Based on VOX® AC30HW* (normal channel).",
    ),

    EffectInfo(
      name: 'SUPDual OD',
      index: 19,
      id: 117440552,
      description:
          "Based on the Supro®Dual-Tone 1624T* (CH1+2, dirty tone). In the mid 60’s , vintage 1624T amps have been sought-after for decades because the Dual-Tone’s volume knob is turned beyond noon, a fat and compressed clean tone evolves into an immediately recognizable grind that remains articulate and listenable even when turned up to full blast.",
    ),

    EffectInfo(
      name: 'UK 45',
      index: 20,
      id: 117440554,
      description:
          "Based on Marshall® JTM45* (normal channel). In 1962, Marshall® introduced the first guitar speakers specifically designed for rock music, and its powerful sound laid the foundation for rock music. So its panel material  plexiglas as the most classic 1960s sound specific name--- Plexi.",
    ),

    EffectInfo(
      name: 'UK 45+',
      index: 21,
      id: 117440555,
      description:
          "Based on Marshall® JTM45* . In 1962, Marshall® introduced the first guitar speakers specifically designed for rock music, and its powerful sound laid the foundation for rock music. So its panel material  plexiglas as the most classic 1960s sound specific name--- Plexi.",
    ),

    EffectInfo(
      name: 'UK 45JP',
      index: 22,
      id: 117440556,
      description:
          "Based on Marshall® JTM45* . In 1962, Marshall® introduced the first guitar speakers specifically designed for rock music, and its powerful sound laid the foundation for rock music. So its panel material  plexiglas as the most classic 1960s sound specific name--- Plexi.",
    ),

    EffectInfo(
      name: 'UK 50',
      index: 23,
      id: 117440557,
      description:
          "Based on Marshall® JMP50* (\"Jump\" connection). Through the adjustment of JTM45*\'s rectifier tube, the power was improved. In 1966, Marshall company launched JTM50*, and the \"Plexi\"  sound obtained  utilizing the overdrive by more people. The timbre is more full compared to JTM45*.",
    ),

    EffectInfo(
      name: 'UK 50+',
      index: 24,
      id: 117440558,
      description:
          "Based on Marshall® JMP50* (\"Jump\" connection). Through the adjustment of JTM45*\'s rectifier tube, the power was improved. In 1966, Marshall company launched JTM50*, and the \"Plexi\"  sound obtained  utilizing the overdrive by more people. The timbre is more full compared to JTM45*.",
    ),

    EffectInfo(
      name: 'UK 50JP',
      index: 25,
      id: 117440559,
      description:
          "Based on Marshall® JMP50* (\"Jump\" connection). Through the adjustment of JTM45*\'s rectifier tube, the power was improved. In 1966, Marshall company launched JTM50*, and the \"Plexi\"  sound obtained  utilizing the overdrive by more people. The timbre is more full compared to JTM45*.",
    ),

    EffectInfo(
      name: 'UK SLP',
      index: 26,
      id: 117440560,
      description:
          "The 1959HWTM is a line right back to the celebrated era of the mid to late 1960s, the original was born when Pete Townshend asked Jim Marshall if he could make it louder. This re-issue delivers that classic Marshall tone with the same overdrive and crunch, using the authentic parts and methods to construct.",
    ),

    EffectInfo(
      name: 'UK 800',
      index: 27,
      id: 117440565,
      description:
          "Based on Marshall® JCM800*. In 1981, the JCM800* quickly became the rock and metal sound of the \'80s with its excellent higain sound.The founders named it after their own license plate number, inheriting and continuing the legend of Plexi*.",
    ),

    EffectInfo(
      name: 'Mess2C+ 1',
      index: 28,
      id: 117440569,
      description:
          "Based on Mesa/Boogie® Mark II C+™ (Lead channel) with 3 different onboard switch combinations. In the 1980s, Mark II C + *established the position of Mesa / Boogie® metal style, and its voice appeared in the albums of Metallica and Dream Theater, and become a classic of American Higain.",
    ),

    EffectInfo(
      name: 'Mess2C+ 2',
      index: 29,
      id: 117440570,
      description:
          "Based on Mesa/Boogie® Mark II C+™ (Lead channel) with 3 different onboard switch combinations. In the 1980s, Mark II C + *established the position of Mesa / Boogie® metal style, and its voice appeared in the albums of Metallica and Dream Theater, and become a classic of American Higain.",
    ),

    EffectInfo(
      name: 'Mess 2C+ 3',
      index: 30,
      id: 117440571,
      description:
          "Based on Mesa/Boogie® Mark II C+™ (Lead channel) with 3 different onboard switch combinations. In the 1980s, Mark II C + *established the position of Mesa / Boogie® metal style, and its voice appeared in the albums of Metallica and Dream Theater, and become a classic of American Higain.",
    ),

    EffectInfo(
      name: 'BogSV OD',
      index: 31,
      id: 117440573,
      description: "Based on Bogner ® Shiva* (20th Anniversary version, Ch2.",
    ),

    EffectInfo(
      name: 'Juice30 OD',
      index: 32,
      id: 117440574,
      description:
          "The AD30 is an amp head with pure tube sound in the classic Class A circuit (with 4 El84 amp tubes), which guarantees harmonious sounds with an impressive spectrum. The \"TC\" stands for \"twin channel\", where a lead channel available, ensuring sustain rich sounds even at lowest volume.",
    ),

    EffectInfo(
      name: 'Flagman 1',
      index: 33,
      id: 117440576,
      description:
          "Based on the famous“Brown Eye”UK-style boutique amp head (BE channel). Improvement on Marshall® Plexi* basis. It has smooth high frequency, tight low frequency and high frequency gain function. It can be used in many musical styles.",
    ),

    EffectInfo(
      name: 'Flagman 2',
      index: 34,
      id: 117440577,
      description:
          "Based on the famous\"Brown Eye\"UK-style boutique amp head (BE channel).",
    ),

    EffectInfo(
      name: 'Bog BlueV',
      index: 35,
      id: 117440579,
      description:
          "Bogner® XTC blue channel is popular for its highly recognizable classic rock and roll sound. Its loud and handsome plexi voice has extraordinary attainments.",
    ),

    EffectInfo(
      name: 'Bog BlueM',
      index: 36,
      id: 117440580,
      description:
          "Bogner® XTC blue channel is popular for its highly recognizable classic rock and roll sound. Its loud and handsome plexi voice has extraordinary attainments.",
    ),

    EffectInfo(
      name: 'Solo100 OD',
      index: 37,
      id: 117440583,
      description: "Based on Soldano® SLO100* (crunch channel).",
    ),

    EffectInfo(
      name: 'Match OD',
      index: 38,
      id: 117440584,
      description: "Based Matchless™ Chieftain 212 combo* (overdrive tone).",
    ),

    EffectInfo(
      name: 'Z38 OD',
      index: 39,
      id: 117440585,
      description: "Based on Dr. Z® Maz 38 Sr.* combo (clean sound).",
    ),

    EffectInfo(
      name: 'L-Star OD',
      index: 40,
      id: 117440586,
      description: "Based on Mesa/Boogie® Lone Star™(CH2).",
    ),

    EffectInfo(
      name: 'Bad-KT OD',
      index: 41,
      id: 117440587,
      description: "Based on Bad Cat® Hot Cat 30* (overdrive channel).",
    ),

    EffectInfo(
      name: 'UK 900',
      index: 42,
      id: 117440590,
      description:
          "The JCM900 is the evolution of the JCM800® adding another channel, two reverb options and two gain features. Tube Set consists of 3 x 12AX7 preamp tubes, and 4 x 6L6/5881 power tubes. Known for its tone and workhorse roadworthiness, the JCM900 has many fans due to its feature set and versatility.",
    ),

    EffectInfo(
      name: 'Juice R100',
      index: 43,
      id: 117440595,
      description:
          "Based on Orange® Rockerverb 100™* (Dirty channel). Once launched, this amplifier has become a new favorite of rock musicians. Its sound is unique, and its timbre can be controlled from warm and sweet clear tone to heavy music, which will bring surprise to the performers.",
    ),

    EffectInfo(
      name: 'Mess4 LD',
      index: 44,
      id: 117440597,
      description:
          "Based on Mesa/Boogie® Mark IV™ (Lead channel). Based on the classic upgrade, it inherits the omnipotence of Mesa / Boogie®, with rich harmonics and sustain from the voiceless tone to the sharp dark morden higain timbre.",
    ),

    EffectInfo(
      name: 'Mess4 LD 2',
      index: 45,
      id: 117440598,
      description: "Based on Mesa/Boogie® Mark IV™ (Lead 2 channel).",
    ),

    EffectInfo(
      name: 'Mess4 LD 3',
      index: 46,
      id: 117440599,
      description: "Based on Mesa/Boogie® Mark IV™ (Lead 3 channel).",
    ),

    EffectInfo(
      name: 'Solo100 LD',
      index: 47,
      id: 117440601,
      description:
          "Based on Soldano® SLO100* (overdrive channel). Also from Eddie Van Hale\'s Brown Sound, Steve Vai\'s classic album “Passion & Warfare” was recorded in SLO100*.",
    ),

    EffectInfo(
      name: 'EV 51',
      index: 48,
      id: 117440602,
      description:
          "Based on Peavey® 5150® (LEAD channel). Guitarist Eddie Van Halen, who began working with Peavey® in the 1980s, loved the sound and took the album\'s title \"5150\" to the world with its metallic sound.",
    ),

    EffectInfo(
      name: 'Flagman+ 1',
      index: 49,
      id: 117440605,
      description:
          "Based on the famous“Brown Eye”UK-style boutique amp head (HBE channel).",
    ),

    EffectInfo(
      name: 'Flagman+ 2',
      index: 50,
      id: 117440606,
      description:
          "Based on the famous“Brown Eye”UK-style boutique amp head (HBE channel).",
    ),

    EffectInfo(
      name: 'Eagle 120',
      index: 51,
      id: 117440607,
      description:
          "ENGL® Savage 120 Amplifier embodies ENGL’s rich legacy of creating metal machines for delivering truly punishing tones, with clear dynamics and tremendous sonic variety. This incredible tonal flexibility comes from the 4 channel layout of the amp, with a dedicated Clean channel, two separate Crunch channels, and a super-saturated Lead channel, all supported by two discrete EQs and a wide selection of additional features.",
    ),

    EffectInfo(
      name: 'Eagle 120+',
      index: 52,
      id: 117440608,
      description:
          "ENGL® Savage 120 Amplifier embodies ENGL’s rich legacy of creating metal machines for delivering truly punishing tones, with clear dynamics and tremendous sonic variety. This incredible tonal flexibility comes from the 4 channel layout of the amp, with a dedicated Clean channel, two separate Crunch channels, and a super-saturated Lead channel, all supported by two discrete EQs and a wide selection of additional features.",
    ),

    EffectInfo(
      name: 'Power LD',
      index: 53,
      id: 117440611,
      description:
          "Based on ENGL® Powerball II E645/2* (CH4). It can bring you extremely compact low frequency, a lot of gain and precise dynamic response, which is very suitable for modern rock and metal music.",
    ),

    EffectInfo(
      name: 'Dizz VH',
      index: 54,
      id: 117440613,
      description:
          "Based on Diezel® VH4*. Born in Germany in the 1990s, its timbre and multifunction have attracted countless guitar masters.The unique Modern Higain quickly conquered many musicians.",
    ),

    EffectInfo(
      name: 'Dizz VH S',
      index: 55,
      id: 117440614,
      description:
          "Based on Diezel® VH4*. Born in Germany in the 1990s, its timbre and multifunction have attracted countless guitar masters.The unique Modern Higain quickly conquered many musicians.",
    ),

    EffectInfo(
      name: 'Mess DualV',
      index: 56,
      id: 117440616,
      description:
          "Based on Mesa/Boogie® Dual Rectifier®. The distortion of Rectifier® series is warm, and the distortion of Rectifier® series is very wide, which is more thick and solid than Mark®.",
    ),

    EffectInfo(
      name: 'Mess DualM',
      index: 57,
      id: 117440617,
      description:
          "Based on Mesa/Boogie Dual Rectifier(Modern mode). The distortion of Rectifier series is warm, and the distortion of Rectifier series is very wide, which is more thick and solid than Mark.",
    ),

    EffectInfo(
      name: 'Dizz VH+',
      index: 58,
      id: 117440618,
      description:
          "Based on Diezel® VH4*. Born in Germany in the 1990s, its timbre and multifunction have attracted countless guitar masters.The unique Modern Higain quickly conquered many musicians.",
    ),

    EffectInfo(
      name: 'Dizz VH+ S',
      index: 59,
      id: 117440619,
      description:
          "Based on Diezel® VH4*. Born in Germany in the 1990s, its timbre and multifunction have attracted countless guitar masters.The unique Modern Higain quickly conquered many musicians.",
    ),

    EffectInfo(
      name: 'Bog RedV',
      index: 60,
      id: 117440621,
      description:
          "The Bogner® XTC red channel is known for its fiery high gain distortion and the main timbre.",
    ),

    EffectInfo(
      name: 'Bog RedM',
      index: 61,
      id: 117440622,
      description:
          "The Bogner® XTC red channel is known for its fiery high gain distortion and the main timbre.",
    ),

    EffectInfo(
      name: 'Classic Bass',
      index: 62,
      id: 117440627,
      description:
          "Based on Ampeg® SVT* bass amp. Launched in 1969, Ampeg SVT has always been the most mainstream bass speaker, Have a strong ability to sound shape.",
    ),

    EffectInfo(
      name: 'Foxy Bass',
      index: 63,
      id: 117440629,
      description:
          "Based on vintage VOX®* AC-100* bass amp. In 1963, the Beatles was in urgent need of a bass speaker with a volume greater than that of the club\'s crazy shouting, and the AC-100* came into being. With 100W power and 4x12 \"box, it has successfully become the most representative bass voice in the 1960s.",
    ),

    EffectInfo(
      name: 'Mess Bass',
      index: 64,
      id: 117440631,
      description:
          "Based on Mesa/Boogie® Bass 400* amp. You can hear the sound of the early bass speakers in many albums.",
    ),

    EffectInfo(
      name: 'Knights CL+',
      index: 65,
      id: 117440635,
      description:
          "Based on Grindrod® Pendragon PG20C* (Normal channel, bright on). If you\'re a big fan of British sound/overdrive, this is a sound you can\'t miss.It can bring the pure British style, sound full of penetrating power.",
    ),

    EffectInfo(
      name: 'Knights OD',
      index: 66,
      id: 117440636,
      description:
          "Based on Grindrod® Pendragon PG20C* (Drive channel). If you\'re a big fan of British sound/overdrive, this is a sound you can\'t miss.It can bring the pure British style, sound full of penetrating power.",
    ),

    EffectInfo(
      name: 'Mini Bass',
      index: 67,
      id: 134217845,
      description:
          "Based on Ampeg® B-15* \"Flip Top\" bass amp. The B-15* was conceived by legendary Jess Oliver in 1958. It can be seen from the early clubs to the world\'s top studios. B-15* can be said to be a landmark product that is hard to be ignored.",
    ),

    EffectInfo(
      name: 'Bass Pre',
      index: 68,
      id: 134217846,
      description:
          "Based on Alembic™ F-2B* preamp.In the 1960s, inspired by the Fender® speaker, the circuit was transformed in an all-round way, which brought the extremely advanced adjustment mode at that time, which was loved by many musicians, thus leaving a strong mark in the history of rock music.",
    ),

    EffectInfo(
      name: 'AC Pre',
      index: 69,
      id: 134217850,
      description:
          "Based on AER® Colourizer 2* acoustic preamp. Originated in Germany, it is a preamp designed for acoustic guitar sound reinforcement. It will bring richer dynamics and overtones to your acoustic guitar, making the sound more three-dimensional and vivid.",
    ),

    EffectInfo(
      name: 'AC Pre 2',
      index: 70,
      id: 134217851,
      description:
          "Based on AER® Colourizer 2* acoustic preamp. Originated in Germany, it is a preamp designed for acoustic guitar sound reinforcement. It will bring richer dynamics and overtones to your acoustic guitar, making the sound more three-dimensional and vivid.",
    ),

    EffectInfo(
      name: 'AMP Empty 1',
      index: 71,
      id: 251658240,
      description: "For importing and using the.nam file.",
    ),

    EffectInfo(
      name: 'AMP Empty 2',
      index: 72,
      id: 251658241,
      description: "For importing and using the.nam file.",
    ),

    EffectInfo(
      name: 'AMP Empty 3',
      index: 73,
      id: 251658242,
      description: "For importing and using the.nam file.",
    ),

    EffectInfo(
      name: 'AMP Empty 4',
      index: 74,
      id: 251658243,
      description: "For importing and using the.nam file.",
    ),

    EffectInfo(
      name: 'AMP Empty 5',
      index: 75,
      id: 251658244,
      description: "For importing and using the.nam file.",
    ),
  ],
  EffectType.nr: [
    EffectInfo(
      name: 'Gate 1',
      index: 0,
      id: 27,
      description:
          "Based on famous ISP®Decimator™* noise gate pedal. The Decimator features improvements in the expander tracking with their new Linearized Time Vector Processing™. This novel improvement provides a more linear release time-constant response for the exponential release curve of the downward expander.",
    ),

    EffectInfo(
      name: 'Gate 2',
      index: 1,
      id: 29,
      description: "Flexible noise gate with attack and release control.",
    ),

    EffectInfo(
      name: 'Gate 3',
      index: 3,
      id: 33,
      description:
          "The inverse expander is a type of dynamic signal processing algorithm.",
    ),

    EffectInfo(
      name: 'Auto Swell',
      index: 2,
      id: 67108909,
      description:
          "This is an auto swell effect with two parameters that are easy to understand and use. It can make the guitar sound like a violin.",
    ),
  ],
  EffectType.cab: [
    EffectInfo(
      name: 'SUP ZEP 1X6',
      index: 0,
      id: 167772160,
      description: "Supro®* 1x6\" cabinet with oval speaker",
    ),

    EffectInfo(
      name: 'TWD CP 1X8',
      index: 1,
      id: 167772161,
      description: "Vintage Fender® Champ* 1x8\" cabinet",
    ),

    EffectInfo(
      name: 'TWD PRC 1X10',
      index: 2,
      id: 167772162,
      description: "Vintage Fender® Princeton* 1x10\" cabinet",
    ),

    EffectInfo(
      name: 'DARK LUX 1X12',
      index: 3,
      id: 167772163,
      description: "Vintage Fender® Deluxe* 1x12\" cabinet",
    ),

    EffectInfo(
      name: 'DARK VIT 1X12',
      index: 4,
      id: 167772164,
      description: "Vintage Fender® Vibrolux* 1x12\" cabinet",
    ),

    EffectInfo(
      name: 'ROUT 1X12',
      index: 5,
      id: 167772165,
      description: "Carr® Rambler* 1x12\" cabinet",
    ),

    EffectInfo(
      name: 'BogSV 1X12',
      index: 6,
      id: 167772166,
      description: "Bogner® Shiva* 1x12\" cabinet",
    ),

    EffectInfo(
      name: 'Bad-KT 1X12',
      index: 7,
      id: 167772167,
      description: "Black Cat® Hot Cat* 1x12\" cabinet",
    ),

    EffectInfo(
      name: 'FOXY 1X12',
      index: 8,
      id: 167772168,
      description: "Vintage VOX® AC15* 1x12\" cabinet",
    ),

    EffectInfo(
      name: 'D STAR 1X12',
      index: 9,
      id: 167772169,
      description: "Mesa/Boogie® Lonestar* 1x12\" cabinet",
    ),

    EffectInfo(
      name: 'Match 2X12',
      index: 10,
      id: 167772176,
      description: "Matchless® Chieftain* 2x12\" cabinet",
    ),

    EffectInfo(
      name: 'TOM OPEN 1X12',
      index: 11,
      id: 167772170,
      description: "Swart® Atomic Space* 1x12\" cabinet",
    ),

    EffectInfo(
      name: 'TWD LUX 1X12',
      index: 12,
      id: 167772171,
      description: "Fender® Tweed Deluxe* 1x12 cabinet",
    ),

    EffectInfo(
      name: 'US STO 1X12',
      index: 13,
      id: 167772172,
      description: "1980\'s Mesa/Boogie®* 1x12\" cabinet",
    ),

    EffectInfo(
      name: 'ACE 1X12',
      index: 14,
      id: 167772173,
      description: "Morgan® AC-20 Deluxe* 1x12 cabinet",
    ),

    EffectInfo(
      name: 'UK G12 1X12',
      index: 15,
      id: 167772174,
      description: "Marshall®* 1x12\" cabinet",
    ),

    EffectInfo(
      name: 'FOXY 2X12',
      index: 16,
      id: 167772175,
      description: "Vintage VOX® AC30* 2x12\" cabinet",
    ),

    EffectInfo(
      name: 'J-120 2X12',
      index: 17,
      id: 167772177,
      description: "Legendary \"Jazz Chorus\" 2x12\" cabinet",
    ),

    EffectInfo(
      name: 'Dark Twin 2X12',
      index: 18,
      id: 167772178,
      description: "Vintage Fender® ’65 Twin Reverb* 2x12\" cabinet",
    ),

    EffectInfo(
      name: 'US GRN 2X12',
      index: 19,
      id: 167772179,
      description: "Marshall® 2550* 2x12\" cabinet",
    ),

    EffectInfo(
      name: 'TWD SUP 2X10',
      index: 20,
      id: 167772180,
      description: "A custom Fender® Tweed* 2x10\" cabinet",
    ),

    EffectInfo(
      name: 'BOUTI 2X12',
      index: 21,
      id: 167772181,
      description: "A unique custom 2x12\" cabinet",
    ),

    EffectInfo(
      name: 'Bellman 212',
      index: 22,
      id: 167772182,
      description: "Vintgae Fender® \"Piggyback\" Bassman®* 2x12\" cabinet",
    ),

    EffectInfo(
      name: 'SUP 2X12',
      index: 23,
      id: 167772183,
      description: "Supro® 1624T* 2x12 cabinet\"",
    ),

    EffectInfo(
      name: 'MATT TWD 2X12',
      index: 24,
      id: 167772184,
      description: "Matchless®* 2x12\" cabinet",
    ),

    EffectInfo(
      name: 'SUP STAR 2X12',
      index: 25,
      id: 167772185,
      description: "Mesa/Boogie® Lonestar* 2x12\" cabinet",
    ),

    EffectInfo(
      name: 'FREEMAN 2X12',
      index: 26,
      id: 167772186,
      description: "Fryette® Deliverance* 2x12\" cabinet",
    ),

    EffectInfo(
      name: 'Dark CS 2X12',
      index: 27,
      id: 167772187,
      description: "Custom modified Fender®* 2x12\" cabinet",
    ),

    EffectInfo(
      name: 'DB ROCK 2X12',
      index: 28,
      id: 167772188,
      description: "Two-Rock®* 2x12\" cabinet",
    ),

    EffectInfo(
      name: 'BLUE SK 2X12',
      index: 29,
      id: 167772189,
      description:
          "A custom 2x12\" cabinet with Celestion® Alnico Blue* speakers",
    ),

    EffectInfo(
      name: 'Bellman 410',
      index: 30,
      id: 167772190,
      description: "Fender® \'59 Bassman®* 4x10\" cabinet",
    ),

    EffectInfo(
      name: 'UK LD 4X12',
      index: 31,
      id: 167772191,
      description: "Marshall® 1960AV* 4x12\" cabinet",
    ),

    EffectInfo(
      name: 'UK TD 2X12',
      index: 32,
      id: 167772192,
      description: "68 Marshall® Basketweave* 4x12\" cabinet",
    ),

    EffectInfo(
      name: 'UK MD 4X12',
      index: 33,
      id: 167772193,
      description: "Custom modified Marshall®* 4x12\" cabinet",
    ),

    EffectInfo(
      name: 'UK GRN 4X12',
      index: 34,
      id: 167772194,
      description:
          "Vintage Marshall® 4x12\" cabinet with Celestion® Greenback®* speakers",
    ),

    EffectInfo(
      name: 'EV 4X12',
      index: 35,
      id: 167772195,
      description: "Peavey® 6505* 4x12\" cabinet",
    ),

    EffectInfo(
      name: 'Mess 4X12',
      index: 36,
      id: 167772196,
      description: "Mesa/Boogie® Rectifier®* 4x12\" cabinet",
    ),

    EffectInfo(
      name: 'Bog 4X12',
      index: 37,
      id: 167772197,
      description: "Bogner®* 4x12\" cabinet",
    ),

    EffectInfo(
      name: 'Eagle 4X12',
      index: 38,
      id: 167772198,
      description: "ENGL®* 4x12\" cabinet",
    ),

    EffectInfo(
      name: 'Uban 4X12',
      index: 39,
      id: 167772199,
      description: "Bogner® Uberkab* 4x12\" cabinet",
    ),

    EffectInfo(
      name: 'SOLO 4X12',
      index: 40,
      id: 167772200,
      description: "Soldano®* 4x12\" caninet",
    ),

    EffectInfo(
      name: 'Juice 4X12',
      index: 41,
      id: 167772201,
      description: "Orange® PPC412* 4x12\" cabinet",
    ),

    EffectInfo(
      name: 'H-WAY 4X12',
      index: 42,
      id: 167772202,
      description: "Vintage Hiwatt® SE4123* 4x12\" cabinet",
    ),

    EffectInfo(
      name: 'UK DARK 4X12',
      index: 43,
      id: 167772203,
      description: "1968 Marshall®* 4x12\" cabinet",
    ),

    EffectInfo(
      name: 'WAY 4X12',
      index: 44,
      id: 167772204,
      description: "Vintage WEM®* 4x12\" cabinet",
    ),

    EffectInfo(
      name: 'DUMB 4X12',
      index: 45,
      id: 167772205,
      description: "Dumble®* 4x12\" cabinet",
    ),

    EffectInfo(
      name: 'DIZZ 4X12',
      index: 46,
      id: 167772206,
      description: "Diezel®* 4x12\" cabinet",
    ),

    EffectInfo(
      name: 'TRP 4X12',
      index: 47,
      id: 167772207,
      description: "Hughes & Kettner® Triamp* 4x12\" cabinet",
    ),

    EffectInfo(
      name: 'UK 75 4X12',
      index: 48,
      id: 167772208,
      description:
          "Marshall®* 4x12\" cabinet with Celestion® G12T-75* speakers",
    ),

    EffectInfo(
      name: 'KING 4X12',
      index: 49,
      id: 167772209,
      description: "Mesa/Boogie® Road King®* 4x12\" cabinet",
    ),

    EffectInfo(
      name: 'ADM 1X15',
      index: 50,
      id: 167772210,
      description: "David Eden®* 1x15\" bass cabinet",
    ),

    EffectInfo(
      name: 'WORKMAN 1X15',
      index: 51,
      id: 167772211,
      description: "SWR®* 1x15\" bass cabinet",
    ),

    EffectInfo(
      name: 'F-TOP 1X15',
      index: 52,
      id: 167772212,
      description: "Ampeg® PF-115HE* 1x15\" bass cabinet",
    ),

    EffectInfo(
      name: 'US BASS 2X10',
      index: 53,
      id: 167772213,
      description: "Mesa/Boogie®* 2x10\" bass cabinet",
    ),

    EffectInfo(
      name: 'MATT 2X10',
      index: 54,
      id: 167772214,
      description: "Mark Bass®* 2x10\" bass cabinet",
    ),

    EffectInfo(
      name: 'ADM 4X10',
      index: 55,
      id: 167772215,
      description: "David Eden®* 4x10\" bass cabinet",
    ),

    EffectInfo(
      name: 'AMPG 4X10',
      index: 56,
      id: 167772216,
      description: "Ampeg® SVT-410HE* 4x10\" bass cabinet",
    ),

    EffectInfo(
      name: 'WORKMAN 4X10',
      index: 57,
      id: 167772217,
      description: "SWR® Workingman\'s* 4x10\" bass cabinet",
    ),

    EffectInfo(
      name: 'HACK 4X12',
      index: 58,
      id: 167772218,
      description: "Hartke®* 4x12\" bass cabinet",
    ),

    EffectInfo(
      name: 'AMPG 8X10',
      index: 59,
      id: 167772219,
      description: "Ampeg SVT-810E* 8x10\" bass cabinet",
    ),

    EffectInfo(
      name: 'AC',
      index: 60,
      id: 167772220,
      description: "Dreadnought guitar simulation 1",
    ),

    EffectInfo(
      name: 'AC Dream',
      index: 61,
      id: 167772221,
      description: "Dreadnought guitar simulation 2",
    ),

    EffectInfo(
      name: 'OM',
      index: 62,
      id: 167772222,
      description: "Simulates an OM type acoustic guitar",
    ),

    EffectInfo(
      name: 'JUMBO',
      index: 63,
      id: 167772223,
      description: "Simulates a jumbo acoustic guitar",
    ),

    EffectInfo(
      name: 'Bird',
      index: 64,
      id: 167772224,
      description: "Simulates the iconic \"H-Bird\" acoustic guitar",
    ),

    EffectInfo(
      name: 'GA',
      index: 65,
      id: 167772225,
      description: "Simulates a GA type acoustic guitar",
    ),

    EffectInfo(
      name: 'Classic AC',
      index: 66,
      id: 167772226,
      description: "Simulates a classical guitar",
    ),

    EffectInfo(
      name: 'Mandolin',
      index: 67,
      id: 167772227,
      description: "Simulates a mandolon",
    ),

    EffectInfo(
      name: 'Fretless Bass',
      index: 68,
      id: 167772228,
      description: "Simulates a fretless acoustic bass",
    ),

    EffectInfo(
      name: 'Double Bass',
      index: 69,
      id: 167772229,
      description: "Simulates a double bass",
    ),

    EffectInfo(
      name: 'USER IR',
      index: 70,
      id: 168820736,
      description: "USER IR",
    ),

    EffectInfo(
      name: 'USER IR',
      index: 71,
      id: 168820737,
      description: "USER IR",
    ),

    EffectInfo(
      name: 'USER IR',
      index: 72,
      id: 168820738,
      description: "USER IR",
    ),

    EffectInfo(
      name: 'USER IR',
      index: 73,
      id: 168820739,
      description: "USER IR",
    ),

    EffectInfo(
      name: 'USER IR',
      index: 74,
      id: 168820740,
      description: "USER IR",
    ),

    EffectInfo(
      name: 'USER IR',
      index: 75,
      id: 168820741,
      description: "USER IR",
    ),

    EffectInfo(
      name: 'USER IR',
      index: 76,
      id: 168820742,
      description: "USER IR",
    ),

    EffectInfo(
      name: 'USER IR',
      index: 77,
      id: 168820743,
      description: "USER IR",
    ),

    EffectInfo(
      name: 'USER IR',
      index: 78,
      id: 168820744,
      description: "USER IR",
    ),

    EffectInfo(
      name: 'USER IR',
      index: 79,
      id: 168820745,
      description: "USER IR",
    ),

    EffectInfo(
      name: 'USER IR',
      index: 80,
      id: 168820746,
      description: "USER IR",
    ),

    EffectInfo(
      name: 'USER IR',
      index: 81,
      id: 168820747,
      description: "USER IR",
    ),

    EffectInfo(
      name: 'USER IR',
      index: 82,
      id: 168820748,
      description: "USER IR",
    ),

    EffectInfo(
      name: 'USER IR',
      index: 83,
      id: 168820749,
      description: "USER IR",
    ),

    EffectInfo(
      name: 'USER IR',
      index: 84,
      id: 168820750,
      description: "USER IR",
    ),

    EffectInfo(
      name: 'USER IR',
      index: 85,
      id: 168820751,
      description: "USER IR",
    ),

    EffectInfo(
      name: 'USER IR',
      index: 86,
      id: 168820752,
      description: "USER IR",
    ),

    EffectInfo(
      name: 'USER IR',
      index: 87,
      id: 168820753,
      description: "USER IR",
    ),

    EffectInfo(
      name: 'USER IR',
      index: 88,
      id: 168820754,
      description: "USER IR",
    ),

    EffectInfo(
      name: 'USER IR',
      index: 89,
      id: 168820755,
      description: "USER IR",
    ),
  ],
  EffectType.eq: [
    EffectInfo(
      name: 'EQ 1',
      index: 0,
      id: 16777269,
      description: "Equalizer designed for guitars",
    ),

    EffectInfo(
      name: 'EQ 3',
      index: 1,
      id: 16777270,
      description: "Equalizer designed for guitars",
    ),

    EffectInfo(
      name: 'EQ 2',
      index: 2,
      id: 16777274,
      description: "Equalizer designed for basses",
    ),

    EffectInfo(
      name: 'EQ 6',
      index: 3,
      id: 16777273,
      description: "Equalizer designed for basses",
    ),

    EffectInfo(
      name: 'Hyper EQ',
      index: 4,
      id: 16777283,
      description: "10-band graphic EQ suitable for any instrument",
    ),

    EffectInfo(
      name: '5-Band EQ',
      index: 5,
      id: 16777276,
      description: "Based on the 5-band EQ module on Mesa/Boogie®* amps",
    ),
  ],
  EffectType.mod: [
    EffectInfo(
      name: 'A-Chorus',
      index: 26,
      id: 67108864,
      description:
          "Based on the classic chorus pedal of the 1980s. It can be used to create tones similar to the style of rotary speakers.",
    ),

    EffectInfo(
      name: 'G-Chorus',
      index: 0,
      id: 67108865,
      description:
          "Based on the legendary huge ensemble chorus pedal born in late 1970s (chorus mode), producing rich, shimmering vintage analog chorus tone. Warm, rich, and dreamlike analog chorus sound.",
    ),

    EffectInfo(
      name: 'C-Chorus',
      index: 1,
      id: 67108866,
      description:
          "Based on a legendary 4-button purple stereo chorus pedal, providing detailed rich chorus tone that expands sonic dimensions",
    ),

    EffectInfo(
      name: 'Jet',
      index: 2,
      id: 67108881,
      description:
          "Classic flanger effect, producing rich and natural flanger tone.",
    ),

    EffectInfo(
      name: 'B-Jet',
      index: 3,
      id: 67108882,
      description: "Classic flanging effect tuned for basses",
    ),

    EffectInfo(
      name: 'N-Jet',
      index: 4,
      id: 67108883,
      description:
          "A flanger with negative feedback, producing \"underwater\" style sound",
    ),

    EffectInfo(
      name: 'V-Roto',
      index: 5,
      id: 67108885,
      description:
          "Based on a BBD-based blue vibrato pedal, producing natural analog vibrato sound",
    ),

    EffectInfo(
      name: 'G-Roto',
      index: 6,
      id: 67108886,
      description:
          "Based on the legendary huge ensemble chorus pedal born in late 1970s (vibrato mode), producing rich, shimmering vintage analog vibrato tone",
    ),

    EffectInfo(
      name: 'O-Phase',
      index: 7,
      id: 67108889,
      description:
          "Based on legendary MXR® M101 Phase 90*. Have you heard the guitar sound in Eddie Van Halen\'s \"Eruption\"? That distorted tone with a sense of rotation is realized by Phase 90.",
    ),

    EffectInfo(
      name: 'G-Phase',
      index: 8,
      id: 67108890,
      description:
          "Based on a BBD-based green phase pedal, producing natural analog phase sound",
    ),

    EffectInfo(
      name: 'S-Phase',
      index: 9,
      id: 67108891,
      description:
          "The Electro Harmonix Small Stone was one of the first phasers available in the 70\'s and can be heard on countless recordings. As the competitors of that time, it comes with a control (rate, the speed of the effect) and the intensity can be modified with a switch - the sound is just right for most applications.",
    ),

    EffectInfo(
      name: 'Sine Trem',
      index: 10,
      id: 67108902,
      description: "Sine tremolo waveforms and super wide tonal range.",
    ),

    EffectInfo(
      name: 'Triangle Trem',
      index: 11,
      id: 67108903,
      description: "Triangle tremolo waveforms and super wide tonal range.",
    ),

    EffectInfo(
      name: 'Bias Trem',
      index: 12,
      id: 67108904,
      description: "Bias tremolo waveforms and super wide tonal range",
    ),

    EffectInfo(
      name: 'Detune',
      index: 13,
      id: 16777257,
      description:
          "This is a detuning effect that combines a slightly shifted signal with the original signal to create a chorus-like tone.",
    ),

    EffectInfo(
      name: 'Bit Smash',
      index: 14,
      id: 16777262,
      description:
          "Provides bitcrushing/sample reducing effect with musical fashion",
    ),

    EffectInfo(
      name: 'B-Chorus',
      index: 15,
      id: 67108872,
      description:
          "Based on the famous ensemble chorus unit tuned for bassists",
    ),

    EffectInfo(
      name: 'M-Chorus',
      index: 16,
      id: 67108879,
      description:
          "A multi-dimensional chorus pedal producing rich surrounding chorus sound, better playing with stereo sound systems",
    ),

    EffectInfo(
      name: 'Trem Jet',
      index: 17,
      id: 67108884,
      description: "Combines flanger and tremolo in one",
    ),

    EffectInfo(
      name: 'Vibrato',
      index: 18,
      id: 67108887,
      description: "A classic vibrato effect with wide adjustable range",
    ),

    EffectInfo(
      name: 'Pan Phase',
      index: 19,
      id: 67108894,
      description: "A special, subtle phaser combines tremolo/pan variations",
    ),

    EffectInfo(
      name: 'M-Vibe',
      index: 20,
      id: 67108895,
      description:
          "Based on Voodoo Lab® Micro Vibe*. Voodoo Lab Micro Vibe has the same design as the original 1968 Uni-Vibe*. Jimi Hendrix and Stevie Ray Vaughan used these effects extensively in their albums. The Vibe effect will bring about slight and regular pitch changes.",
    ),

    EffectInfo(
      name: 'Vibe',
      index: 21,
      id: 67108896,
      description:
          "The Shin-Ei Uni-Vibe is a classic phase shifter(chorus) effect made famous by Jimi Hendrix, David Gilmour, Robin Trower and many more. The rich “chorus” effect that it’s famous for has become a staple in a classic rock guitarist’s rig. While the Uni-Vibe’s construction is closely copied by many companies, many players confirm that there’s just nothing like the real thing!",
    ),

    EffectInfo(
      name: 'O-Trem',
      index: 22,
      id: 67108897,
      description:
          "Based on legendary Demeter® TRM-1Tremulator*,offering classical opto tremolo sound. In 1982, rock pioneer Ry Cooder approached James Demeter to ask whether the tremolo sound of the Fender® twin series speakers could be made into a pedal effect device, and this classic effect device was born.",
    ),

    EffectInfo(
      name: 'Auto Swell',
      index: 23,
      id: 67108909,
      description:
          "This is an auto swell effect with two parameters that are easy to understand and use. It can make the guitar sound like a violin.",
    ),

    EffectInfo(
      name: 'Hold',
      index: 24,
      id: 67108911,
      description:
          "This is a freeze effect that can freeze the sound for a short period of time before the effect is activated and make it play in a loop. The Activate parameter can be assigned to the expression pedal to activate and deactivate the effect; You can also turn on the Activate parameter and use CTRL to directly control the On/Off of the effect module.",
    ),

    EffectInfo(
      name: 'Freeze',
      index: 25,
      id: 67108912,
      description:
          "This is a freeze effect that can freeze the sound at the moment of activation and keep it playing when the effect is activated. The Activate parameter can be assigned to the expression pedal to activate and deactivate the effect; You can also turn on the Activate parameter and use CTRL to directly control the On/Off of the effect module.",
    ),

    EffectInfo(
      name: 'Vibrato T',
      index: 11,
      id: 67108888,
      description:
          "This is a special vibrato effect with dynamic depth control, which lets you create  touch-sensitive pitch modulation. Use the Rate knob to control the modulation speed; use the Sens knob to fine tune the sensitivity. You can use Tap Tempo function to control the effect speed by turning on the Sync switch. When the Sync switch is on, turn the Rate knob to set a proper tap divide value. The default value is 1/4 (no division). ",
    ),
  ],
  EffectType.dly: [
    EffectInfo(
      name: 'BBD Delay S',
      index: 0,
      id: 184549405,
      description:
          "This is a stereo analog delay model that captures the sound of a BBD based analog delay machine that is warm, smooth, rounded due to the limitation of BBD chips. ",
    ),

    EffectInfo(
      name: 'Digital Delay S',
      index: 1,
      id: 184549407,
      description:
          "This model is a stereo digital delay that produces a pure clean delay sound, clear and accurate.",
    ),

    EffectInfo(
      name: 'Tape Delay S',
      index: 2,
      id: 184549409,
      description:
          "Back in the old days, producers and engineers created delay and echo effects using tape machines. That sweet, space-like echo tone is still popular today, especially among psychedelic musicians.",
    ),

    EffectInfo(
      name: 'Ambience 1',
      index: 3,
      id: 184549418,
      description:
          "This model is a multi-tap delay that brings you expanded sound spaciousness. 1, 2 stands for different tonal variations",
    ),

    EffectInfo(
      name: 'Ambience 2',
      index: 4,
      id: 184549422,
      description:
          "This model is a multi-tap delay that brings you expanded sound spaciousness. 1, 2 stands for different tonal variations",
    ),

    EffectInfo(
      name: 'Pure',
      index: 5,
      id: 184549376,
      description: "Produce pure, precised delay sound",
    ),

    EffectInfo(
      name: 'Analog',
      index: 6,
      id: 184549377,
      description: "Produciing warm delay sound with analog feel",
    ),

    EffectInfo(
      name: 'Tape',
      index: 7,
      id: 184549378,
      description: "Simulates solid-state tape echo sound",
    ),

    EffectInfo(
      name: 'Ping Pong',
      index: 8,
      id: 184549380,
      description:
          "A ping-pong delay producing stereo feedbadk bounces back and forth between left and right channels",
    ),

    EffectInfo(
      name: 'Slapback',
      index: 9,
      id: 184549381,
      description: "Simulates the classic slapback echo effect",
    ),

    EffectInfo(
      name: 'Sweep Echo',
      index: 10,
      id: 184549382,
      description:
          "Producing a delay effect with sweeping filter modulated repeats",
    ),

    EffectInfo(
      name: 'Ring Echo',
      index: 11,
      id: 184549385,
      description: "Producing a delay effect with ring modulated repeats",
    ),

    EffectInfo(
      name: 'Tube',
      index: 12,
      id: 184549387,
      description: "Simulates tube-driven tape echo sound",
    ),

    EffectInfo(
      name: 'M-Echo',
      index: 13,
      id: 184549388,
      description:
          "A multi tap delay that simulates a huge 4-head tape echo machine",
    ),

    EffectInfo(
      name: 'Sweet Echo',
      index: 14,
      id: 184549389,
      description:
          "This analog delay pedal was sold from 1981 to 1984 and is still sought after thanks to its warm, natural sound. Produces a delay time ranging from 20 to 300 milliseconds.",
    ),

    EffectInfo(
      name: '999 Echo',
      index: 15,
      id: 184549394,
      description:
          "Based on Maxon® AD900 Analog Delay*, providing warm, accurate delay sound. 100% Analog Delay, dynamic distortion on Delay repeats, gorgeous, warm, organic delay tone.",
    ),

    EffectInfo(
      name: 'Vintage Rack',
      index: 16,
      id: 184549396,
      description:
          "Reproduces the sound of a vintage 1980\'s rack-mount delay machine with slightly sample-reduced feedback",
    ),

    EffectInfo(
      name: 'Lofi Echo',
      index: 17,
      id: 184549414,
      description: "Producing a delay effect with lo-fi\'d repeats",
    ),

    EffectInfo(
      name: 'Rev Echo',
      index: 18,
      id: 184549416,
      description: "Producing a special delay e%ect with reversed feedback",
    ),

    EffectInfo(
      name: 'Dual Echo',
      index: 19,
      id: 184549379,
      description:
          "Producing a pure dual delay effect with Dual Echo separated L/R channel signal proessing",
    ),

    EffectInfo(
      name: 'Ice Delay',
      index: 20,
      id: 184549427,
      description:
          "This is a special delay effect that combining normal feedback with pitch shifted slices.  You can use Tap Tempo function to control the delay time by turning on the Sync switch. When the Sync switch is on, turn the Time knob to set a proper tap divide value. The default value is 1/4 (no division).  ",
    ),

    EffectInfo(
      name: 'Broken Delay',
      index: 21,
      id: 184549426,
      description:
          "This is a creative delay effect focused on \"breaking conventions\". It produces a \"fragmented\" sound characterized by stutters, jumps, and granularity, simulating effects like \"signal glitches\" or \"device freezes\".",
    ),
  ],
  EffectType.rvb: [
    EffectInfo(
      name: 'Room',
      index: 0,
      id: 201326592,
      description: "Simulates the spaciousness of a room",
    ),

    EffectInfo(
      name: 'Hall',
      index: 1,
      id: 201326593,
      description: "Simulates the spaciousness of a performance hall",
    ),

    EffectInfo(
      name: 'Church',
      index: 2,
      id: 201326594,
      description: "Simulates the spaciousness of a church",
    ),

    EffectInfo(
      name: 'Plate',
      index: 3,
      id: 201326595,
      description:
          "Simulates the sound character produced by a vintage plate reverberator",
    ),

    EffectInfo(
      name: 'Spring',
      index: 4,
      id: 201326596,
      description:
          "Simulates the sound character produced by a vintage spring reverberator",
    ),

    EffectInfo(
      name: 'Studio',
      index: 5,
      id: 201326603,
      description:
          "This reverb model recreates the spaciousness of a recording studio.",
    ),

    EffectInfo(
      name: 'Club',
      index: 6,
      id: 201326604,
      description: "This reverb model recreates the spaciousness of a club.",
    ),

    EffectInfo(
      name: 'Concert',
      index: 7,
      id: 201326605,
      description:
          "This reverb model recreates the spaciousness of a concert hall.",
    ),

    EffectInfo(
      name: 'Arena',
      index: 8,
      id: 201326606,
      description:
          "This reverb model recreates the spaciousness of a live arena.",
    ),

    EffectInfo(
      name: 'N-Star',
      index: 9,
      id: 201326598,
      description: "Special-tuned reverb effect with lush, bright decays",
    ),

    EffectInfo(
      name: 'Deepsea',
      index: 10,
      id: 201326599,
      description: "Special-tuned reverb effect with huge, deep decays",
    ),

    EffectInfo(
      name: 'Sweet Space',
      index: 11,
      id: 201326600,
      description: "Produces a modulated reverb effect that is lush and sweet",
    ),

    EffectInfo(
      name: 'Shimmer',
      index: 12,
      id: 201326601,
      description: "Produce a rich, shimmering reverb effect",
    ),

    EffectInfo(
      name: 'Amp Spring',
      index: 13,
      id: 201326609,
      description:
          "This reverb model simulates the solid state spring reverb module coming from a combo amp.",
    ),

    EffectInfo(
      name: 'Tube Spring',
      index: 5,
      id: 201326610,
      description:
          "This reverb model simulates the sound coming from a vintage tube driven spring reverb unit.  ",
    ),
  ],
  EffectType.vol: [
    EffectInfo(
      name: 'Volume',
      index: 0,
      id: 100663299,
      description: "Pure volume control without any impurities",
    ),
  ],
};
