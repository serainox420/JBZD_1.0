.class public final Lcom/google/android/gms/fitness/data/Value;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/fitness/data/Value;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final format:I

.field private value:F

.field private final versionCode:I

.field private zzaGV:Ljava/lang/String;

.field private zzaUq:Z

.field private zzaUr:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/fitness/data/MapValue;",
            ">;"
        }
    .end annotation
.end field

.field private zzaUs:[I

.field private zzaUt:[F

.field private zzaUu:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/fitness/data/zzad;

    invoke-direct {v0}, Lcom/google/android/gms/fitness/data/zzad;-><init>()V

    sput-object v0, Lcom/google/android/gms/fitness/data/Value;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 10

    const/4 v5, 0x0

    const/4 v1, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p1

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-direct/range {v0 .. v9}, Lcom/google/android/gms/fitness/data/Value;-><init>(IIZFLjava/lang/String;Landroid/os/Bundle;[I[F[B)V

    return-void
.end method

.method constructor <init>(IIZFLjava/lang/String;Landroid/os/Bundle;[I[F[B)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/fitness/data/Value;->versionCode:I

    iput p2, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    iput-boolean p3, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUq:Z

    iput p4, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    iput-object p5, p0, Lcom/google/android/gms/fitness/data/Value;->zzaGV:Ljava/lang/String;

    invoke-static {p6}, Lcom/google/android/gms/fitness/data/Value;->zzB(Landroid/os/Bundle;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUr:Ljava/util/Map;

    iput-object p7, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUs:[I

    iput-object p8, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUt:[F

    iput-object p9, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUu:[B

    return-void
.end method

.method private static zzB(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/fitness/data/MapValue;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-class v0, Lcom/google/android/gms/fitness/data/MapValue;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    new-instance v2, Landroid/support/v4/f/a;

    invoke-virtual {p0}, Landroid/os/Bundle;->size()I

    move-result v0

    invoke-direct {v2, v0}, Landroid/support/v4/f/a;-><init>(I)V

    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/fitness/data/MapValue;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method private zza(Lcom/google/android/gms/fitness/data/Value;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    iget v3, p1, Lcom/google/android/gms/fitness/data/Value;->format:I

    if-ne v2, v3, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUq:Z

    iget-boolean v3, p1, Lcom/google/android/gms/fitness/data/Value;->zzaUq:Z

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    packed-switch v2, :pswitch_data_0

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    iget v3, p1, Lcom/google/android/gms/fitness/data/Value;->value:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result v2

    invoke-virtual {p1}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_1
    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    iget v3, p1, Lcom/google/android/gms/fitness/data/Value;->value:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaGV:Ljava/lang/String;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Value;->zzaGV:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUr:Ljava/util/Map;

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Value;->zzaUr:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUs:[I

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Value;->zzaUs:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUt:[F

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Value;->zzaUt:[F

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUu:[B

    iget-object v1, p1, Lcom/google/android/gms/fitness/data/Value;->zzaUu:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public asActivity()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/fitness/zza;->getName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asFloat()F
    .locals 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Value is not in float format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public asInt()I
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    if-ne v1, v0, :cond_0

    :goto_0
    const-string v1, "Value is not in int format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public asString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Value is not in string format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaGV:Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearKey(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Attempting to set a key\'s value to a field that is not in FLOAT_MAP format.  Please check the data type definition and use the right format."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUr:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/fitness/data/Value;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/gms/fitness/data/Value;

    invoke-direct {p0, p1}, Lcom/google/android/gms/fitness/data/Value;->zza(Lcom/google/android/gms/fitness/data/Value;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFormat()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    return v0
.end method

.method public getKeyValue(Ljava/lang/String;)Ljava/lang/Float;
    .locals 2

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v1, "Value is not in float map format"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUr:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUr:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/fitness/data/MapValue;

    invoke-virtual {v0}, Lcom/google/android/gms/fitness/data/MapValue;->asFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->versionCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->zzaGV:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUr:Ljava/util/Map;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUs:[I

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUt:[F

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUu:[B

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSet()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUq:Z

    return v0
.end method

.method public setActivity(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/fitness/zza;->zzdU(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/fitness/data/Value;->setInt(I)V

    return-void
.end method

.method public setFloat(F)V
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Attempting to set an float value to a field that is not in FLOAT format.  Please check the data type definition and use the right format."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUq:Z

    iput p1, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setInt(I)V
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Attempting to set an int value to a field that is not in INT32 format.  Please check the data type definition and use the right format."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUq:Z

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iput v0, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setKeyValue(Ljava/lang/String;F)V
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_0
    const-string v2, "Attempting to set a key\'s value to a field that is not in FLOAT_MAP format.  Please check the data type definition and use the right format."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUq:Z

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUr:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUr:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUr:Ljava/util/Map;

    invoke-static {p2}, Lcom/google/android/gms/fitness/data/MapValue;->zzd(F)Lcom/google/android/gms/fitness/data/MapValue;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setString(Ljava/lang/String;)V
    .locals 3

    const/4 v1, 0x1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "Attempting to set a string value to a field that is not in STRING format.  Please check the data type definition and use the right format."

    invoke-static {v0, v2}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    iput-boolean v1, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUq:Z

    iput-object p1, p0, Lcom/google/android/gms/fitness/data/Value;->zzaGV:Ljava/lang/String;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUq:Z

    if-nez v0, :cond_0

    const-string v0, "unset"

    :goto_0
    return-object v0

    :cond_0
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->format:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "unknown"

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/google/android/gms/fitness/data/Value;->asInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaGV:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    new-instance v0, Ljava/util/TreeMap;

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUr:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/TreeMap;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUs:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUt:[F

    invoke-static {v0}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUu:[B

    iget-object v1, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUu:[B

    array-length v1, v1

    invoke-static {v0, v2, v1, v2}, Lcom/google/android/gms/common/util/zzn;->zza([BIIZ)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/fitness/data/zzad;->zza(Lcom/google/android/gms/fitness/data/Value;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzCC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaGV:Ljava/lang/String;

    return-object v0
.end method

.method zzCD()Landroid/os/Bundle;
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUr:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(I)V

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUr:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_1

    :cond_1
    move-object v0, v2

    goto :goto_0
.end method

.method zzCE()[I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUs:[I

    return-object v0
.end method

.method zzCF()[F
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUt:[F

    return-object v0
.end method

.method zzCG()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/fitness/data/Value;->zzaUu:[B

    return-object v0
.end method

.method zzCx()F
    .locals 1

    iget v0, p0, Lcom/google/android/gms/fitness/data/Value;->value:F

    return v0
.end method
