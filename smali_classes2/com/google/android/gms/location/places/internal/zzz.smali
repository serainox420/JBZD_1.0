.class public Lcom/google/android/gms/location/places/internal/zzz;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/location/places/internal/zzz;",
            ">;"
        }
    .end annotation
.end field

.field public static final zzbnb:Lcom/google/android/gms/location/places/internal/zzz;


# instance fields
.field public final versionCode:I

.field public final zzaJT:Ljava/lang/String;

.field public final zzblS:Ljava/lang/String;

.field public final zzbnc:Ljava/lang/String;

.field public final zzbnd:Ljava/lang/String;

.field public final zzbne:I

.field public final zzbnf:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/location/places/internal/zzz;

    const-string v1, "com.google.android.gms"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/location/places/internal/zzz;-><init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/location/places/internal/zzz;->zzbnb:Lcom/google/android/gms/location/places/internal/zzz;

    new-instance v0, Lcom/google/android/gms/location/places/internal/zzaa;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/internal/zzaa;-><init>()V

    sput-object v0, Lcom/google/android/gms/location/places/internal/zzz;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/location/places/internal/zzz;->versionCode:I

    iput-object p2, p0, Lcom/google/android/gms/location/places/internal/zzz;->zzbnc:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/location/places/internal/zzz;->zzbnd:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/location/places/internal/zzz;->zzaJT:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/location/places/internal/zzz;->zzblS:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/location/places/internal/zzz;->zzbne:I

    iput p7, p0, Lcom/google/android/gms/location/places/internal/zzz;->zzbnf:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x3

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    sget v6, Lcom/google/android/gms/common/GoogleApiAvailability;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/places/internal/zzz;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    const/4 v1, 0x3

    invoke-virtual {p2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    sget v6, Lcom/google/android/gms/common/GoogleApiAvailability;->GOOGLE_PLAY_SERVICES_VERSION_CODE:I

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/location/places/internal/zzz;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p1, :cond_2

    instance-of v2, p1, Lcom/google/android/gms/location/places/internal/zzz;

    if-nez v2, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    check-cast p1, Lcom/google/android/gms/location/places/internal/zzz;

    iget v2, p0, Lcom/google/android/gms/location/places/internal/zzz;->zzbne:I

    iget v3, p1, Lcom/google/android/gms/location/places/internal/zzz;->zzbne:I

    if-ne v2, v3, :cond_4

    iget v2, p0, Lcom/google/android/gms/location/places/internal/zzz;->zzbnf:I

    iget v3, p1, Lcom/google/android/gms/location/places/internal/zzz;->zzbnf:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzz;->zzbnd:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/zzz;->zzbnd:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzz;->zzbnc:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/zzz;->zzbnc:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzz;->zzaJT:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/zzz;->zzaJT:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzz;->zzblS:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/android/gms/location/places/internal/zzz;->zzblS:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzz;->zzbnc:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzz;->zzbnd:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzz;->zzaJT:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzz;->zzblS:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/gms/location/places/internal/zzz;->zzbne:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/gms/location/places/internal/zzz;->zzbnf:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzaa;->zzv(Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "clientPackageName"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzz;->zzbnc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "locale"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzz;->zzbnd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "accountName"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzz;->zzaJT:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    const-string v1, "gCoreClientName"

    iget-object v2, p0, Lcom/google/android/gms/location/places/internal/zzz;->zzblS:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/internal/zzaa$zza;->zzg(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/internal/zzaa$zza;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/zzaa$zza;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/location/places/internal/zzaa;->zza(Lcom/google/android/gms/location/places/internal/zzz;Landroid/os/Parcel;I)V

    return-void
.end method
