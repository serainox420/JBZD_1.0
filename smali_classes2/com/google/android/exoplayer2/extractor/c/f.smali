.class final Lcom/google/android/exoplayer2/extractor/c/f;
.super Ljava/lang/Object;
.source "MetadataUtil.java"


# static fields
.field private static final A:I

.field private static final B:I

.field private static final C:I

.field private static final D:[Ljava/lang/String;

.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:I

.field private static final e:I

.field private static final f:I

.field private static final g:I

.field private static final h:I

.field private static final i:I

.field private static final j:I

.field private static final k:I

.field private static final l:I

.field private static final m:I

.field private static final n:I

.field private static final o:I

.field private static final p:I

.field private static final q:I

.field private static final r:I

.field private static final s:I

.field private static final t:I

.field private static final u:I

.field private static final v:I

.field private static final w:I

.field private static final x:I

.field private static final y:I

.field private static final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    const-string v0, "nam"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->a:I

    .line 36
    const-string v0, "trk"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->b:I

    .line 37
    const-string v0, "cmt"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->c:I

    .line 38
    const-string v0, "day"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->d:I

    .line 39
    const-string v0, "ART"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->e:I

    .line 40
    const-string v0, "too"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->f:I

    .line 41
    const-string v0, "alb"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->g:I

    .line 42
    const-string v0, "com"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->h:I

    .line 43
    const-string v0, "wrt"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->i:I

    .line 44
    const-string v0, "lyr"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->j:I

    .line 45
    const-string v0, "gen"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->k:I

    .line 48
    const-string v0, "covr"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->l:I

    .line 49
    const-string v0, "gnre"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->m:I

    .line 50
    const-string v0, "grp"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->n:I

    .line 51
    const-string v0, "disk"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->o:I

    .line 52
    const-string v0, "trkn"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->p:I

    .line 53
    const-string v0, "tmpo"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->q:I

    .line 54
    const-string v0, "cpil"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->r:I

    .line 55
    const-string v0, "aART"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->s:I

    .line 56
    const-string v0, "sonm"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->t:I

    .line 57
    const-string v0, "soal"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->u:I

    .line 58
    const-string v0, "soar"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->v:I

    .line 59
    const-string v0, "soaa"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->w:I

    .line 60
    const-string v0, "soco"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->x:I

    .line 63
    const-string v0, "rtng"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->y:I

    .line 64
    const-string v0, "pgap"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->z:I

    .line 65
    const-string v0, "sosn"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->A:I

    .line 66
    const-string v0, "tvsh"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->B:I

    .line 69
    const-string v0, "----"

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/v;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/android/exoplayer2/extractor/c/f;->C:I

    .line 72
    const/16 v0, 0x94

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Blues"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Classic Rock"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Country"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Dance"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Disco"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Funk"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Grunge"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Hip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Metal"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "New Age"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Oldies"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Other"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Pop"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "R&B"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Reggae"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Alternative"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "Ska"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Death Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Pranks"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Soundtrack"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Euro-Techno"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Ambient"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Trip-Hop"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Vocal"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "Jazz+Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Trance"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "Classical"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "Instrumental"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "Acid"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "House"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "Game"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "Sound Clip"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "Gospel"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Noise"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "AlternRock"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "Space"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "Meditative"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Instrumental Pop"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Instrumental Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Ethnic"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Gothic"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Darkwave"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Techno-Industrial"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Electronic"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Pop-Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "Eurodance"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "Dream"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "Southern Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Comedy"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Cult"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Gangsta"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "Top 40"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "Christian Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Pop/Funk"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "Jungle"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Native American"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Cabaret"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "New Wave"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Psychadelic"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "Rave"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "Showtunes"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Trailer"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Lo-Fi"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "Tribal"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "Acid Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "Acid Jazz"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "Polka"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Retro"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "Musical"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "Rock & Roll"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Hard Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "Folk-Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "National Folk"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "Swing"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "Fast Fusion"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Bebob"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Latin"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "Revival"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "Celtic"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "Bluegrass"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Avantgarde"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "Gothic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "Progressive Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Psychedelic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "Symphonic Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "Slow Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "Big Band"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Chorus"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "Easy Listening"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Acoustic"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Humour"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "Speech"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "Chanson"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "Opera"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Chamber Music"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Sonata"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Symphony"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "Booty Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "Primus"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Porn Groove"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "Satire"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Slow Jam"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "Club"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Tango"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "Samba"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "Folklore"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Power Ballad"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "Rhythmic Soul"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Freestyle"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "Duet"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Punk Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Drum Solo"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "A capella"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "Euro-House"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "Dance Hall"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Goa"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Drum & Bass"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Club-House"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "Hardcore"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "Terror"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "Indie"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "BritPop"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Negerpunk"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "Polsk Punk"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Beat"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "Christian Gangsta Rap"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Heavy Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "Black Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Crossover"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Contemporary Christian"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Christian Rock"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Merengue"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "Salsa"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "Thrash Metal"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Anime"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "Jpop"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Synthpop"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/exoplayer2/extractor/c/f;->D:[Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/Metadata$Entry;
    .locals 5

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v0

    .line 114
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v1

    add-int/2addr v1, v0

    .line 115
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    .line 116
    shr-int/lit8 v2, v0, 0x18

    and-int/lit16 v2, v2, 0xff

    .line 118
    const/16 v3, 0xa9

    if-eq v2, v3, :cond_0

    const v3, 0xfffd

    if-ne v2, v3, :cond_c

    .line 120
    :cond_0
    const v2, 0xffffff

    and-int/2addr v2, v0

    .line 121
    :try_start_0
    sget v3, Lcom/google/android/exoplayer2/extractor/c/f;->c:I

    if-ne v2, v3, :cond_1

    .line 122
    invoke-static {v0, p0}, Lcom/google/android/exoplayer2/extractor/c/f;->a(ILcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    :goto_0
    return-object v0

    .line 123
    :cond_1
    :try_start_1
    sget v3, Lcom/google/android/exoplayer2/extractor/c/f;->a:I

    if-eq v2, v3, :cond_2

    sget v3, Lcom/google/android/exoplayer2/extractor/c/f;->b:I

    if-ne v2, v3, :cond_3

    .line 124
    :cond_2
    const-string v2, "TIT2"

    invoke-static {v0, v2, p0}, Lcom/google/android/exoplayer2/extractor/c/f;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto :goto_0

    .line 125
    :cond_3
    :try_start_2
    sget v3, Lcom/google/android/exoplayer2/extractor/c/f;->h:I

    if-eq v2, v3, :cond_4

    sget v3, Lcom/google/android/exoplayer2/extractor/c/f;->i:I

    if-ne v2, v3, :cond_5

    .line 126
    :cond_4
    const-string v2, "TCOM"

    invoke-static {v0, v2, p0}, Lcom/google/android/exoplayer2/extractor/c/f;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto :goto_0

    .line 127
    :cond_5
    :try_start_3
    sget v3, Lcom/google/android/exoplayer2/extractor/c/f;->d:I

    if-ne v2, v3, :cond_6

    .line 128
    const-string v2, "TDRC"

    invoke-static {v0, v2, p0}, Lcom/google/android/exoplayer2/extractor/c/f;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto :goto_0

    .line 129
    :cond_6
    :try_start_4
    sget v3, Lcom/google/android/exoplayer2/extractor/c/f;->e:I

    if-ne v2, v3, :cond_7

    .line 130
    const-string v2, "TPE1"

    invoke-static {v0, v2, p0}, Lcom/google/android/exoplayer2/extractor/c/f;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto :goto_0

    .line 131
    :cond_7
    :try_start_5
    sget v3, Lcom/google/android/exoplayer2/extractor/c/f;->f:I

    if-ne v2, v3, :cond_8

    .line 132
    const-string v2, "TSSE"

    invoke-static {v0, v2, p0}, Lcom/google/android/exoplayer2/extractor/c/f;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto :goto_0

    .line 133
    :cond_8
    :try_start_6
    sget v3, Lcom/google/android/exoplayer2/extractor/c/f;->g:I

    if-ne v2, v3, :cond_9

    .line 134
    const-string v2, "TALB"

    invoke-static {v0, v2, p0}, Lcom/google/android/exoplayer2/extractor/c/f;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto :goto_0

    .line 135
    :cond_9
    :try_start_7
    sget v3, Lcom/google/android/exoplayer2/extractor/c/f;->j:I

    if-ne v2, v3, :cond_a

    .line 136
    const-string v2, "USLT"

    invoke-static {v0, v2, p0}, Lcom/google/android/exoplayer2/extractor/c/f;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto :goto_0

    .line 137
    :cond_a
    :try_start_8
    sget v3, Lcom/google/android/exoplayer2/extractor/c/f;->k:I

    if-ne v2, v3, :cond_b

    .line 138
    const-string v2, "TCON"

    invoke-static {v0, v2, p0}, Lcom/google/android/exoplayer2/extractor/c/f;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto :goto_0

    .line 139
    :cond_b
    :try_start_9
    sget v3, Lcom/google/android/exoplayer2/extractor/c/f;->n:I

    if-ne v2, v3, :cond_1d

    .line 140
    const-string v2, "TIT1"

    invoke-static {v0, v2, p0}, Lcom/google/android/exoplayer2/extractor/c/f;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto/16 :goto_0

    .line 142
    :cond_c
    :try_start_a
    sget v2, Lcom/google/android/exoplayer2/extractor/c/f;->m:I

    if-ne v0, v2, :cond_d

    .line 143
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/c/f;->b(Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto/16 :goto_0

    .line 144
    :cond_d
    :try_start_b
    sget v2, Lcom/google/android/exoplayer2/extractor/c/f;->o:I

    if-ne v0, v2, :cond_e

    .line 145
    const-string v2, "TPOS"

    invoke-static {v0, v2, p0}, Lcom/google/android/exoplayer2/extractor/c/f;->b(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto/16 :goto_0

    .line 146
    :cond_e
    :try_start_c
    sget v2, Lcom/google/android/exoplayer2/extractor/c/f;->p:I

    if-ne v0, v2, :cond_f

    .line 147
    const-string v2, "TRCK"

    invoke-static {v0, v2, p0}, Lcom/google/android/exoplayer2/extractor/c/f;->b(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto/16 :goto_0

    .line 148
    :cond_f
    :try_start_d
    sget v2, Lcom/google/android/exoplayer2/extractor/c/f;->q:I

    if-ne v0, v2, :cond_10

    .line 149
    const-string v2, "TBPM"

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v0, v2, p0, v3, v4}, Lcom/google/android/exoplayer2/extractor/c/f;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto/16 :goto_0

    .line 150
    :cond_10
    :try_start_e
    sget v2, Lcom/google/android/exoplayer2/extractor/c/f;->r:I

    if-ne v0, v2, :cond_11

    .line 151
    const-string v2, "TCMP"

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-static {v0, v2, p0, v3, v4}, Lcom/google/android/exoplayer2/extractor/c/f;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto/16 :goto_0

    .line 152
    :cond_11
    :try_start_f
    sget v2, Lcom/google/android/exoplayer2/extractor/c/f;->l:I

    if-ne v0, v2, :cond_12

    .line 153
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/c/f;->c(Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto/16 :goto_0

    .line 154
    :cond_12
    :try_start_10
    sget v2, Lcom/google/android/exoplayer2/extractor/c/f;->s:I

    if-ne v0, v2, :cond_13

    .line 155
    const-string v2, "TPE2"

    invoke-static {v0, v2, p0}, Lcom/google/android/exoplayer2/extractor/c/f;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto/16 :goto_0

    .line 156
    :cond_13
    :try_start_11
    sget v2, Lcom/google/android/exoplayer2/extractor/c/f;->t:I

    if-ne v0, v2, :cond_14

    .line 157
    const-string v2, "TSOT"

    invoke-static {v0, v2, p0}, Lcom/google/android/exoplayer2/extractor/c/f;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto/16 :goto_0

    .line 158
    :cond_14
    :try_start_12
    sget v2, Lcom/google/android/exoplayer2/extractor/c/f;->u:I

    if-ne v0, v2, :cond_15

    .line 159
    const-string v2, "TSO2"

    invoke-static {v0, v2, p0}, Lcom/google/android/exoplayer2/extractor/c/f;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto/16 :goto_0

    .line 160
    :cond_15
    :try_start_13
    sget v2, Lcom/google/android/exoplayer2/extractor/c/f;->v:I

    if-ne v0, v2, :cond_16

    .line 161
    const-string v2, "TSOA"

    invoke-static {v0, v2, p0}, Lcom/google/android/exoplayer2/extractor/c/f;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto/16 :goto_0

    .line 162
    :cond_16
    :try_start_14
    sget v2, Lcom/google/android/exoplayer2/extractor/c/f;->w:I

    if-ne v0, v2, :cond_17

    .line 163
    const-string v2, "TSOP"

    invoke-static {v0, v2, p0}, Lcom/google/android/exoplayer2/extractor/c/f;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto/16 :goto_0

    .line 164
    :cond_17
    :try_start_15
    sget v2, Lcom/google/android/exoplayer2/extractor/c/f;->x:I

    if-ne v0, v2, :cond_18

    .line 165
    const-string v2, "TSOC"

    invoke-static {v0, v2, p0}, Lcom/google/android/exoplayer2/extractor/c/f;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto/16 :goto_0

    .line 166
    :cond_18
    :try_start_16
    sget v2, Lcom/google/android/exoplayer2/extractor/c/f;->y:I

    if-ne v0, v2, :cond_19

    .line 167
    const-string v2, "ITUNESADVISORY"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v2, p0, v3, v4}, Lcom/google/android/exoplayer2/extractor/c/f;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto/16 :goto_0

    .line 168
    :cond_19
    :try_start_17
    sget v2, Lcom/google/android/exoplayer2/extractor/c/f;->z:I

    if-ne v0, v2, :cond_1a

    .line 169
    const-string v2, "ITUNESGAPLESS"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v0, v2, p0, v3, v4}, Lcom/google/android/exoplayer2/extractor/c/f;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto/16 :goto_0

    .line 170
    :cond_1a
    :try_start_18
    sget v2, Lcom/google/android/exoplayer2/extractor/c/f;->A:I

    if-ne v0, v2, :cond_1b

    .line 171
    const-string v2, "TVSHOWSORT"

    invoke-static {v0, v2, p0}, Lcom/google/android/exoplayer2/extractor/c/f;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto/16 :goto_0

    .line 172
    :cond_1b
    :try_start_19
    sget v2, Lcom/google/android/exoplayer2/extractor/c/f;->B:I

    if-ne v0, v2, :cond_1c

    .line 173
    const-string v2, "TVSHOW"

    invoke-static {v0, v2, p0}, Lcom/google/android/exoplayer2/extractor/c/f;->a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto/16 :goto_0

    .line 174
    :cond_1c
    :try_start_1a
    sget v2, Lcom/google/android/exoplayer2/extractor/c/f;->C:I

    if-ne v0, v2, :cond_1d

    .line 175
    invoke-static {p0, v1}, Lcom/google/android/exoplayer2/extractor/c/f;->a(Lcom/google/android/exoplayer2/util/l;I)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    move-result-object v0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto/16 :goto_0

    .line 177
    :cond_1d
    :try_start_1b
    const-string v2, "MetadataUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipped unknown metadata entry: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/google/android/exoplayer2/extractor/c/a;->c(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    .line 178
    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    throw v0
.end method

.method private static a(ILcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;
    .locals 3

    .prologue
    .line 198
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    .line 199
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v1

    .line 200
    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->aF:I

    if-ne v1, v2, :cond_0

    .line 201
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 202
    add-int/lit8 v0, v0, -0x10

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/l;->f(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    const-string v2, "und"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    return-object v0

    .line 205
    :cond_0
    const-string v0, "MetadataUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse comment attribute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/c/a;->c(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;ZZ)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-static {p2}, Lcom/google/android/exoplayer2/extractor/c/f;->d(Lcom/google/android/exoplayer2/util/l;)I

    move-result v0

    .line 212
    if-eqz p4, :cond_2

    .line 213
    const/4 v2, 0x1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    move v2, v0

    .line 215
    :goto_0
    if-ltz v2, :cond_1

    .line 216
    if-eqz p3, :cond_0

    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :goto_1
    return-object v0

    .line 216
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    const-string v1, "und"

    .line 217
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, p1, v2}, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 219
    :cond_1
    const-string v0, "MetadataUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse uint8 attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/c/a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 220
    goto :goto_1

    :cond_2
    move v2, v0

    goto :goto_0
.end method

.method private static a(Lcom/google/android/exoplayer2/util/l;I)Lcom/google/android/exoplayer2/metadata/id3/Id3Frame;
    .locals 10

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 275
    move v0, v4

    move v1, v4

    move-object v2, v5

    move-object v3, v5

    .line 279
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v6

    if-ge v6, p1, :cond_3

    .line 280
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->d()I

    move-result v7

    .line 281
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v6

    .line 282
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v8

    .line 283
    const/4 v9, 0x4

    invoke-virtual {p0, v9}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 284
    sget v9, Lcom/google/android/exoplayer2/extractor/c/a;->aD:I

    if-ne v8, v9, :cond_0

    .line 285
    add-int/lit8 v3, v6, -0xc

    invoke-virtual {p0, v3}, Lcom/google/android/exoplayer2/util/l;->f(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 286
    :cond_0
    sget v9, Lcom/google/android/exoplayer2/extractor/c/a;->aE:I

    if-ne v8, v9, :cond_1

    .line 287
    add-int/lit8 v2, v6, -0xc

    invoke-virtual {p0, v2}, Lcom/google/android/exoplayer2/util/l;->f(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 289
    :cond_1
    sget v9, Lcom/google/android/exoplayer2/extractor/c/a;->aF:I

    if-ne v8, v9, :cond_2

    move v0, v6

    move v1, v7

    .line 293
    :cond_2
    add-int/lit8 v6, v6, -0xc

    invoke-virtual {p0, v6}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    goto :goto_0

    .line 296
    :cond_3
    const-string v6, "com.apple.iTunes"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "iTunSMPB"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    if-ne v1, v4, :cond_5

    .line 303
    :cond_4
    :goto_1
    return-object v5

    .line 300
    :cond_5
    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->c(I)V

    .line 301
    const/16 v1, 0x10

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 302
    add-int/lit8 v0, v0, -0x10

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->f(I)Ljava/lang/String;

    move-result-object v0

    .line 303
    new-instance v5, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;

    const-string v1, "und"

    invoke-direct {v5, v1, v2, v0}, Lcom/google/android/exoplayer2/metadata/id3/CommentFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static a(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 186
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    .line 187
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v2

    .line 188
    sget v3, Lcom/google/android/exoplayer2/extractor/c/a;->aF:I

    if-ne v2, v3, :cond_0

    .line 189
    const/16 v2, 0x8

    invoke-virtual {p2, v2}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 190
    add-int/lit8 v0, v0, -0x10

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/l;->f(I)Ljava/lang/String;

    move-result-object v2

    .line 191
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_0
    return-object v0

    .line 193
    :cond_0
    const-string v0, "MetadataUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse text attribute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/c/a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 194
    goto :goto_0
.end method

.method private static b(ILjava/lang/String;Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 225
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    .line 226
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v1

    .line 227
    sget v3, Lcom/google/android/exoplayer2/extractor/c/a;->aF:I

    if-ne v1, v3, :cond_1

    const/16 v1, 0x16

    if-lt v0, v1, :cond_1

    .line 228
    const/16 v0, 0xa

    invoke-virtual {p2, v0}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 229
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/l;->g()I

    move-result v0

    .line 230
    if-lez v0, :cond_1

    .line 231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/util/l;->g()I

    move-result v1

    .line 233
    if-lez v1, :cond_0

    .line 234
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 236
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    invoke-direct {v1, p1, v2, v0}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 240
    :goto_0
    return-object v0

    .line 239
    :cond_1
    const-string v0, "MetadataUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse index/count attribute: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/c/a;->c(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    .line 240
    goto :goto_0
.end method

.method private static b(Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 244
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/c/f;->d(Lcom/google/android/exoplayer2/util/l;)I

    move-result v0

    .line 245
    if-lez v0, :cond_0

    sget-object v2, Lcom/google/android/exoplayer2/extractor/c/f;->D:[Ljava/lang/String;

    array-length v2, v2

    if-gt v0, v2, :cond_0

    sget-object v2, Lcom/google/android/exoplayer2/extractor/c/f;->D:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v2, v0

    move-object v2, v0

    .line 247
    :goto_0
    if-eqz v2, :cond_1

    .line 248
    new-instance v0, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;

    const-string v3, "TCON"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/exoplayer2/metadata/id3/TextInformationFrame;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :goto_1
    return-object v0

    :cond_0
    move-object v2, v1

    .line 245
    goto :goto_0

    .line 250
    :cond_1
    const-string v0, "MetadataUtil"

    const-string v2, "Failed to parse standard genre code"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 251
    goto :goto_1
.end method

.method private static c(Lcom/google/android/exoplayer2/util/l;)Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 255
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v3

    .line 256
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v1

    .line 257
    sget v2, Lcom/google/android/exoplayer2/extractor/c/a;->aF:I

    if-ne v1, v2, :cond_3

    .line 258
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v1

    .line 259
    invoke-static {v1}, Lcom/google/android/exoplayer2/extractor/c/a;->b(I)I

    move-result v4

    .line 260
    const/16 v1, 0xd

    if-ne v4, v1, :cond_0

    const-string v1, "image/jpeg"

    move-object v2, v1

    .line 261
    :goto_0
    if-nez v2, :cond_2

    .line 262
    const-string v1, "MetadataUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unrecognized cover art flags: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :goto_1
    return-object v0

    .line 260
    :cond_0
    const/16 v1, 0xe

    if-ne v4, v1, :cond_1

    const-string v1, "image/png"

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v2, v0

    goto :goto_0

    .line 265
    :cond_2
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 266
    add-int/lit8 v1, v3, -0x10

    new-array v3, v1, [B

    .line 267
    const/4 v1, 0x0

    array-length v4, v3

    invoke-virtual {p0, v3, v1, v4}, Lcom/google/android/exoplayer2/util/l;->a([BII)V

    .line 268
    new-instance v1, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;

    const/4 v4, 0x3

    invoke-direct {v1, v2, v0, v4, v3}, Lcom/google/android/exoplayer2/metadata/id3/ApicFrame;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    move-object v0, v1

    goto :goto_1

    .line 270
    :cond_3
    const-string v1, "MetadataUtil"

    const-string v2, "Failed to parse cover art attribute"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private static d(Lcom/google/android/exoplayer2/util/l;)I
    .locals 2

    .prologue
    .line 307
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 308
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->m()I

    move-result v0

    .line 309
    sget v1, Lcom/google/android/exoplayer2/extractor/c/a;->aF:I

    if-ne v0, v1, :cond_0

    .line 310
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/google/android/exoplayer2/util/l;->d(I)V

    .line 311
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/l;->f()I

    move-result v0

    .line 314
    :goto_0
    return v0

    .line 313
    :cond_0
    const-string v0, "MetadataUtil"

    const-string v1, "Failed to parse uint8 attribute value"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v0, -0x1

    goto :goto_0
.end method
