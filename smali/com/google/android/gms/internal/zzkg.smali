.class public final Lcom/google/android/gms/internal/zzkg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/mediation/MediationAdRequest;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# instance fields
.field private final zzLB:I

.field private final zzcR:Ljava/util/Date;

.field private final zzcT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final zzcU:Z

.field private final zzcV:Landroid/location/Location;

.field private final zzzk:I

.field private final zzzw:Z


# direct methods
.method public constructor <init>(Ljava/util/Date;ILjava/util/Set;Landroid/location/Location;ZIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/location/Location;",
            "ZIZ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzkg;->zzcR:Ljava/util/Date;

    iput p2, p0, Lcom/google/android/gms/internal/zzkg;->zzzk:I

    iput-object p3, p0, Lcom/google/android/gms/internal/zzkg;->zzcT:Ljava/util/Set;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzkg;->zzcV:Landroid/location/Location;

    iput-boolean p5, p0, Lcom/google/android/gms/internal/zzkg;->zzcU:Z

    iput p6, p0, Lcom/google/android/gms/internal/zzkg;->zzLB:I

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzkg;->zzzw:Z

    return-void
.end method


# virtual methods
.method public getBirthday()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcR:Ljava/util/Date;

    return-object v0
.end method

.method public getGender()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzkg;->zzzk:I

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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcT:Ljava/util/Set;

    return-object v0
.end method

.method public getLocation()Landroid/location/Location;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcV:Landroid/location/Location;

    return-object v0
.end method

.method public isDesignedForFamilies()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkg;->zzzw:Z

    return v0
.end method

.method public isTesting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzkg;->zzcU:Z

    return v0
.end method

.method public taggedForChildDirectedTreatment()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/zzkg;->zzLB:I

    return v0
.end method
