.class public Lcom/smartadserver/android/library/ui/a/c/b;
.super Ljava/lang/Object;
.source "SASMatrixf4x4.java"


# static fields
.field public static final a:[I

.field public static final b:[I

.field public static final c:[I

.field public static final d:[I

.field public static final e:[I

.field public static final f:[I


# instance fields
.field public g:[F

.field private h:Z

.field private i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0x10

    const/16 v1, 0x9

    .line 28
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/smartadserver/android/library/ui/a/c/b;->a:[I

    .line 29
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/smartadserver/android/library/ui/a/c/b;->b:[I

    .line 30
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/smartadserver/android/library/ui/a/c/b;->c:[I

    .line 31
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/smartadserver/android/library/ui/a/c/b;->d:[I

    .line 33
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/smartadserver/android/library/ui/a/c/b;->e:[I

    .line 34
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/smartadserver/android/library/ui/a/c/b;->f:[I

    return-void

    .line 28
    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    .line 29
    :array_1
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x5
        0x6
        0x8
        0x9
        0xa
    .end array-data

    .line 30
    :array_2
    .array-data 4
        0x0
        0x3
        0x6
        0x1
        0x4
        0x7
        0x3
        0x5
        0x8
    .end array-data

    .line 31
    :array_3
    .array-data 4
        0x0
        0x4
        0x8
        0x1
        0x5
        0x9
        0x2
        0x6
        0xa
    .end array-data

    .line 33
    :array_4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
    .end array-data

    .line 34
    :array_5
    .array-data 4
        0x0
        0x4
        0x8
        0xc
        0x1
        0x5
        0x9
        0xd
        0x2
        0x6
        0xa
        0xe
        0x3
        0x7
        0xb
        0xf
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/a/c/b;->h:Z

    .line 37
    iput-boolean v1, p0, Lcom/smartadserver/android/library/ui/a/c/b;->i:Z

    .line 48
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/b;->g:[F

    .line 49
    iget-object v0, p0, Lcom/smartadserver/android/library/ui/a/c/b;->g:[F

    invoke-static {v0, v1}, Lcom/smartadserver/android/library/ui/a/c/a;->a([FI)V

    .line 50
    iput-boolean v2, p0, Lcom/smartadserver/android/library/ui/a/c/b;->i:Z

    .line 51
    return-void
.end method
