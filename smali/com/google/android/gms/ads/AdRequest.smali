.class public final Lcom/google/android/gms/ads/AdRequest;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/AdRequest$Builder;
    }
.end annotation


# static fields
.field public static final DEVICE_ID_EMULATOR:Ljava/lang/String; = "B3EEABB8EE11C2BE770B684D95219ECB"

.field public static final ERROR_CODE_INTERNAL_ERROR:I = 0x0

.field public static final ERROR_CODE_INVALID_REQUEST:I = 0x1

.field public static final ERROR_CODE_NETWORK_ERROR:I = 0x2

.field public static final ERROR_CODE_NO_FILL:I = 0x3

.field public static final GENDER_FEMALE:I = 0x2

.field public static final GENDER_MALE:I = 0x1

.field public static final GENDER_UNKNOWN:I = 0x0

.field public static final MAX_CONTENT_URL_LENGTH:I = 0x200


# instance fields
.field private final zzrz:Lcom/google/android/gms/internal/zzfe;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzfe;

    invoke-static {p1}, Lcom/google/android/gms/ads/AdRequest$Builder;->zza(Lcom/google/android/gms/ads/AdRequest$Builder;)Lcom/google/android/gms/internal/zzfe$zza;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzfe;-><init>(Lcom/google/android/gms/internal/zzfe$zza;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzrz:Lcom/google/android/gms/internal/zzfe;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/AdRequest$Builder;Lcom/google/android/gms/ads/AdRequest$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$Builder;)V

    return-void
.end method


# virtual methods
.method public getBirthday()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzrz:Lcom/google/android/gms/internal/zzfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfe;->getBirthday()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getContentUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzrz:Lcom/google/android/gms/internal/zzfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfe;->getContentUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/customevent/CustomEvent;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzrz:Lcom/google/android/gms/internal/zzfe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfe;->getCustomEventExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzrz:Lcom/google/android/gms/internal/zzfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfe;->getGender()I

    move-result v0

    return v0
.end method

.method public getKeywords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzrz:Lcom/google/android/gms/internal/zzfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfe;->getKeywords()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzrz:Lcom/google/android/gms/internal/zzfe;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzfe;->getLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/NetworkExtras;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzrz:Lcom/google/android/gms/internal/zzfe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfe;->getNetworkExtras(Ljava/lang/Class;)Lcom/google/android/gms/ads/mediation/NetworkExtras;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/android/gms/ads/mediation/MediationAdapter;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzrz:Lcom/google/android/gms/internal/zzfe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfe;->getNetworkExtrasBundle(Ljava/lang/Class;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public isTestDevice(Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzrz:Lcom/google/android/gms/internal/zzfe;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzfe;->isTestDevice(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public zzbp()Lcom/google/android/gms/internal/zzfe;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->zzrz:Lcom/google/android/gms/internal/zzfe;

    return-object v0
.end method
