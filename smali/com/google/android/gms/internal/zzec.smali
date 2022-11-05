.class public final Lcom/google/android/gms/internal/zzec;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final extras:Landroid/os/Bundle;

.field public final versionCode:I

.field public final zzyT:J

.field public final zzyU:I

.field public final zzyV:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzyW:Z

.field public final zzyX:I

.field public final zzyY:Z

.field public final zzyZ:Ljava/lang/String;

.field public final zzza:Lcom/google/android/gms/internal/zzfp;

.field public final zzzb:Landroid/location/Location;

.field public final zzzc:Ljava/lang/String;

.field public final zzzd:Landroid/os/Bundle;

.field public final zzze:Landroid/os/Bundle;

.field public final zzzf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final zzzg:Ljava/lang/String;

.field public final zzzh:Ljava/lang/String;

.field public final zzzi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzee;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzee;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzec;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lcom/google/android/gms/internal/zzfp;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/os/Bundle;",
            "I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;ZIZ",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzfp;",
            "Landroid/location/Location;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/zzec;->versionCode:I

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzec;->zzyT:J

    if-nez p4, :cond_0

    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    :cond_0
    iput-object p4, p0, Lcom/google/android/gms/internal/zzec;->extras:Landroid/os/Bundle;

    iput p5, p0, Lcom/google/android/gms/internal/zzec;->zzyU:I

    iput-object p6, p0, Lcom/google/android/gms/internal/zzec;->zzyV:Ljava/util/List;

    iput-boolean p7, p0, Lcom/google/android/gms/internal/zzec;->zzyW:Z

    iput p8, p0, Lcom/google/android/gms/internal/zzec;->zzyX:I

    iput-boolean p9, p0, Lcom/google/android/gms/internal/zzec;->zzyY:Z

    iput-object p10, p0, Lcom/google/android/gms/internal/zzec;->zzyZ:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/internal/zzec;->zzza:Lcom/google/android/gms/internal/zzfp;

    iput-object p12, p0, Lcom/google/android/gms/internal/zzec;->zzzb:Landroid/location/Location;

    iput-object p13, p0, Lcom/google/android/gms/internal/zzec;->zzzc:Ljava/lang/String;

    if-nez p14, :cond_1

    new-instance p14, Landroid/os/Bundle;

    invoke-direct/range {p14 .. p14}, Landroid/os/Bundle;-><init>()V

    :cond_1
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzzd:Landroid/os/Bundle;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzze:Landroid/os/Bundle;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzzf:Ljava/util/List;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzzg:Ljava/lang/String;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzzh:Ljava/lang/String;

    move/from16 v0, p19

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzec;->zzzi:Z

    return-void
.end method

.method public static zzi(Lcom/google/android/gms/internal/zzec;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzec;->zzzd:Landroid/os/Bundle;

    const-string v1, "com.google.ads.mediation.admob.AdMobAdapter"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzec;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/android/gms/internal/zzec;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/zzec;

    iget v1, p0, Lcom/google/android/gms/internal/zzec;->versionCode:I

    iget v2, p1, Lcom/google/android/gms/internal/zzec;->versionCode:I

    if-ne v1, v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzec;->zzyT:J

    iget-wide v4, p1, Lcom/google/android/gms/internal/zzec;->zzyT:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzec;->extras:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzec;->extras:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/zzec;->zzyU:I

    iget v2, p1, Lcom/google/android/gms/internal/zzec;->zzyU:I

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzec;->zzyV:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzec;->zzyV:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzec;->zzyW:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzec;->zzyW:Z

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/google/android/gms/internal/zzec;->zzyX:I

    iget v2, p1, Lcom/google/android/gms/internal/zzec;->zzyX:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzec;->zzyY:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzec;->zzyY:Z

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzec;->zzyZ:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzec;->zzyZ:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzec;->zzza:Lcom/google/android/gms/internal/zzfp;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzec;->zzza:Lcom/google/android/gms/internal/zzfp;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzec;->zzzb:Landroid/location/Location;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzec;->zzzb:Landroid/location/Location;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzec;->zzzc:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzec;->zzzc:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzec;->zzzd:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzec;->zzzd:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzec;->zzze:Landroid/os/Bundle;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzec;->zzze:Landroid/os/Bundle;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzec;->zzzf:Ljava/util/List;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzec;->zzzf:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzec;->zzzg:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzec;->zzzg:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzec;->zzzh:Ljava/lang/String;

    iget-object v2, p1, Lcom/google/android/gms/internal/zzec;->zzzh:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/zzaa;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/zzec;->zzzi:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/zzec;->zzzi:Z

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/gms/internal/zzec;->versionCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/android/gms/internal/zzec;->zzyT:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/gms/internal/zzec;->extras:Landroid/os/Bundle;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/gms/internal/zzec;->zzyU:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/zzec;->zzyV:Ljava/util/List;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzec;->zzyW:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/internal/zzec;->zzyX:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzec;->zzyY:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/zzec;->zzyZ:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/google/android/gms/internal/zzec;->zzza:Lcom/google/android/gms/internal/zzfp;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object v2, p0, Lcom/google/android/gms/internal/zzec;->zzzb:Landroid/location/Location;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    iget-object v2, p0, Lcom/google/android/gms/internal/zzec;->zzzc:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    iget-object v2, p0, Lcom/google/android/gms/internal/zzec;->zzzd:Landroid/os/Bundle;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    iget-object v2, p0, Lcom/google/android/gms/internal/zzec;->zzze:Landroid/os/Bundle;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    iget-object v2, p0, Lcom/google/android/gms/internal/zzec;->zzzf:Ljava/util/List;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/google/android/gms/internal/zzec;->zzzg:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    iget-object v2, p0, Lcom/google/android/gms/internal/zzec;->zzzh:Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    iget-boolean v2, p0, Lcom/google/android/gms/internal/zzec;->zzzi:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/common/internal/zzaa;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzee;->zza(Lcom/google/android/gms/internal/zzec;Landroid/os/Parcel;I)V

    return-void
.end method
