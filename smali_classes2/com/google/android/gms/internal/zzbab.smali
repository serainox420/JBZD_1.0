.class public Lcom/google/android/gms/internal/zzbab;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbab$zza;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final zzbDE:[C

.field private static final zzbDF:Ljava/util/regex/Pattern;

.field private static final zzbDG:Ljava/util/regex/Pattern;

.field private static final zzbDH:Ljava/util/regex/Pattern;

.field private static final zzbDI:Ljava/util/regex/Pattern;


# instance fields
.field private final mPath:Ljava/lang/String;

.field private final zzE:Ljava/lang/String;

.field private final zzbDJ:Ljava/lang/String;

.field private final zzbDK:Ljava/lang/String;

.field private final zzbDL:I

.field private final zzuB:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    const-class v0, Lcom/google/android/gms/internal/zzbab;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbab;->TAG:Ljava/lang/String;

    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbab;->zzbDE:[C

    const-string v0, "/\\.\\."

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbab;->zzbDF:Ljava/util/regex/Pattern;

    const-string v0, "0[1-7][0-7]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbab;->zzbDG:Ljava/util/regex/Pattern;

    const-string v0, "0x[0-9a-f]*"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbab;->zzbDH:Ljava/util/regex/Pattern;

    const-string v0, "^((?:0x[0-9a-f]+|[0-9\\\\.])+)$"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/zzbab;->zzbDI:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/zzbab;->zzgH(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbab;->zzE:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbab;->zzbDJ:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbab;->zzbDK:Ljava/lang/String;

    iput v5, p0, Lcom/google/android/gms/internal/zzbab;->zzbDL:I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbab;->mPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbab;->zzuB:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v0, "^\\s+"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\s+$"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "[\\t\\n\\r]"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x23

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v5, :cond_1

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v2, Lcom/google/android/gms/internal/zzbab$zza;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/zzbab$zza;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/zzbab$1;)V

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbab$zza;->zza(Lcom/google/android/gms/internal/zzbab$zza;)Z

    move-result v3

    if-nez v3, :cond_2

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbab;->zzE:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbab;->zzbDJ:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbab;->zzbDK:Ljava/lang/String;

    iput v5, p0, Lcom/google/android/gms/internal/zzbab;->zzbDL:I

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbab;->mPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbab;->zzuB:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/google/android/gms/internal/zzbab$zza;->zzb(Lcom/google/android/gms/internal/zzbab$zza;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/zzbab;->zzbDJ:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbab$zza;->zzc(Lcom/google/android/gms/internal/zzbab$zza;)I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/zzbab;->zzbDL:I

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbab;->zzbDJ:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbab;->zzbDJ:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "^"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    const-string v2, "^/+"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbab;->zzgJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v0, 0x3f

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eq v3, v5, :cond_7

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzbab;->zzgD(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbab;->zzE:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbab;->zzbDK:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbab;->mPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbab;->zzuB:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    const-string v0, ""

    goto :goto_1

    :cond_5
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/zzbab;->zzgG(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3}, Lcom/google/android/gms/internal/zzbab;->zzgI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/zzbab;->zzbDK:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbab;->zzgI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/zzbab;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbab;->zzgI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/google/android/gms/internal/zzbab;->zzuB:Ljava/lang/String;

    iput-object v2, p0, Lcom/google/android/gms/internal/zzbab;->zzE:Ljava/lang/String;

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_2
.end method

.method private static isHexDigit(C)Z
    .locals 1

    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_1

    const/16 v0, 0x46

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x61

    if-lt p0, v0, :cond_3

    const/16 v0, 0x66

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private zzPA()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbab;->zzbDK:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbab;->zzbDK:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    array-length v0, v3

    add-int/lit8 v0, v0, -0x2

    move v6, v0

    move v0, v2

    move v2, v6

    :goto_1
    if-lez v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_3

    aget-char v4, v3, v2

    const/16 v5, 0x2e

    if-ne v4, v5, :cond_1

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbab;->zzbDK:Ljava/lang/String;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbab;->zzbDK:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v1

    goto :goto_0
.end method

.method private zzPB()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbab;->mPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbab;->mPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    move v0, v1

    :goto_1
    array-length v4, v3

    if-ge v0, v4, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    if-ge v4, v5, :cond_2

    aget-char v4, v3, v0

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/zzbab;->mPath:Ljava/lang/String;

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbab;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbab;->mPath:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbab;->zzuB:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbab;->mPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbab;->zzuB:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "?"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v0, v2

    goto/16 :goto_0
.end method

.method private static zzc([BI)Ljava/lang/Byte;
    .locals 6

    const/16 v5, 0x10

    const/4 v4, 0x1

    const/4 v0, 0x0

    add-int/lit8 v1, p1, 0x2

    array-length v2, p0

    if-lt v1, v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    aget-byte v1, p0, p1

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    const/16 v2, 0x25

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    int-to-char v1, v1

    add-int/lit8 v2, p1, 0x2

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-char v2, v2

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbab;->isHexDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbab;->isHexDigit(C)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    goto :goto_0
.end method

.method private zzgD(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, -0x1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-eq v0, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/zzbab;->zzbDL:I

    if-eq v0, v2, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/zzbab;->zzbDL:I

    const/16 v1, 0xd

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "$"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_3
    const-string v0, "^\\.*"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\.*$"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\.+"

    const-string v2, "."

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbab;->zzgE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :goto_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, v1

    goto :goto_1
.end method

.method private static zzgE(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    const/16 v6, 0xb

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "^\\["

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\\]$"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/zzazz;->zzgv(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/google/android/gms/internal/zzazz;->zzgC(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzazz;->zza(Ljava/net/InetAddress;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "[%s]"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0}, Lcom/google/android/gms/internal/zzbab;->zzgF(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_3
    sget-object v2, Lcom/google/android/gms/internal/zzbab;->zzbDI:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/zzbab;->zzbDG:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x8

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    sget-object v0, Lcom/google/android/gms/internal/zzbab;->zzbDH:Ljava/util/regex/Pattern;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_2
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/regex/Matcher;->appendReplacement(Ljava/lang/StringBuffer;Ljava/lang/String;)Ljava/util/regex/Matcher;

    goto :goto_2

    :cond_5
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->appendTail(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "[%s]"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private static zzgF(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v1, Ljava/math/BigInteger;

    invoke-direct {v1, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v6

    array-length v4, v6

    const/4 v5, 0x4

    if-lt v4, v5, :cond_0

    array-length v4, v6

    add-int/lit8 v4, v4, -0x4

    array-length v5, v6

    invoke-static {v6, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [B

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput-byte v8, v5, v7

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget-byte v8, v4, v8

    aput-byte v8, v5, v7

    const/4 v7, 0x2

    const/4 v8, 0x1

    aget-byte v8, v4, v8

    aput-byte v8, v5, v7

    const/4 v7, 0x3

    const/4 v8, 0x2

    aget-byte v8, v4, v8

    aput-byte v8, v5, v7

    const/4 v7, 0x4

    const/4 v8, 0x3

    aget-byte v8, v4, v8

    aput-byte v8, v5, v7

    new-instance v7, Ljava/math/BigInteger;

    invoke-direct {v7, v5}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {v1, v7}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v4}, Ljava/net/Inet4Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    array-length v1, v6

    const/16 v4, 0x10

    if-lt v1, v4, :cond_4

    array-length v1, v6

    add-int/lit8 v1, v1, -0x10

    array-length v2, v6

    invoke-static {v6, v1, v2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    :cond_3
    const-string v2, "[%s]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/net/Inet6Address;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/16 v1, 0x10

    new-array v1, v1, [B

    array-length v4, v6

    rsub-int/lit8 v7, v4, 0x10

    move v4, v3

    move v3, v2

    :goto_1
    if-gt v4, v7, :cond_5

    add-int/lit8 v5, v3, 0x1

    const/4 v8, 0x0

    aput-byte v8, v1, v3

    add-int/lit8 v3, v4, 0x1

    move v4, v3

    move v3, v5

    goto :goto_1

    :cond_5
    :goto_2
    array-length v4, v6

    if-ge v2, v4, :cond_3

    add-int/lit8 v4, v3, 0x1

    aget-byte v5, v6, v2

    aput-byte v5, v1, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    move v3, v4

    goto :goto_2

    :catch_0
    move-exception v1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    goto/16 :goto_0

    :catch_2
    move-exception v1

    goto/16 :goto_0
.end method

.method private zzgG(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    const-string v1, "/\\./"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/\\.$"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbab;->zzbDF:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Ljava/net/URI;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbab;->zzbDJ:Ljava/lang/String;

    const-string v3, "host"

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->normalize()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_2
    const-string v1, "/+"

    const-string v2, "/"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "/"

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2
.end method

.method private static zzgH(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static zzgI(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_1
    array-length v3, v1

    if-ge v0, v3, :cond_3

    aget-byte v3, v1, v0

    and-int/lit16 v3, v3, 0xff

    int-to-char v3, v3

    const/16 v4, 0x20

    if-le v3, v4, :cond_1

    const/16 v4, 0x7e

    if-gt v3, v4, :cond_1

    const/16 v4, 0x23

    if-eq v3, v4, :cond_1

    const/16 v4, 0x25

    if-ne v3, v4, :cond_2

    :cond_1
    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/google/android/gms/internal/zzbab;->zzbDE:[C

    ushr-int/lit8 v5, v3, 0x4

    aget-char v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/google/android/gms/internal/zzbab;->zzbDE:[C

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private static zzgJ(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    const/4 v0, 0x0

    move-object v2, p0

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x400

    if-ge v0, v1, :cond_1

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbab;->zzgK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    move-object v2, p0

    goto :goto_1

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method private static zzgK(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    :try_start_0
    const-string v0, "\\x"

    const-string v2, "%"

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    array-length v0, v2

    invoke-direct {v3, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    const/4 v0, 0x0

    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    aget-byte v4, v2, v0

    and-int/lit16 v5, v4, 0xff

    int-to-char v5, v5

    const/16 v6, 0x80

    if-lt v5, v6, :cond_0

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_2
    return-object v0

    :cond_0
    invoke-static {v2, v0}, Lcom/google/android/gms/internal/zzbab;->zzc([BI)Ljava/lang/Byte;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_2
.end method


# virtual methods
.method public zzPy()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbab;->zzE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbab;->zzbDK:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbab;->zzgE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbab;->zzPB()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v7, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbab;->zzPA()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_4
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    move-object v0, v2

    :goto_4
    move-object v3, v0

    goto :goto_0

    :cond_6
    move-object v0, v3

    goto :goto_4
.end method

.method public zzPz()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/internal/zzazy;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbab;->zzPy()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    :try_start_0
    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v3, v0

    :goto_1
    if-eqz v3, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    :try_start_1
    const-string v5, "UTF-8"

    invoke-virtual {v0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    new-instance v5, Lcom/google/android/gms/internal/zzazy;

    invoke-direct {v5, v0}, Lcom/google/android/gms/internal/zzazy;-><init>([B)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    invoke-virtual {v3}, Ljava/security/MessageDigest;->reset()V

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v3, v2

    goto :goto_1

    :cond_3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    move-object v0, v1

    :goto_4
    move-object v2, v0

    goto :goto_0

    :cond_4
    move-object v0, v2

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_3
.end method
