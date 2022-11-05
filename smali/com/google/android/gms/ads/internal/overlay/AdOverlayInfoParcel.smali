.class public final Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation runtime Lcom/google/android/gms/internal/zzme;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final orientation:I

.field public final url:Ljava/lang/String;

.field public final zzNE:Lcom/google/android/gms/ads/internal/overlay/zzc;

.field public final zzNF:Lcom/google/android/gms/internal/zzdx;

.field public final zzNG:Lcom/google/android/gms/ads/internal/overlay/zzh;

.field public final zzNH:Lcom/google/android/gms/internal/zzqw;

.field public final zzNI:Lcom/google/android/gms/internal/zzhz;

.field public final zzNJ:Ljava/lang/String;

.field public final zzNK:Z

.field public final zzNL:Ljava/lang/String;

.field public final zzNM:Lcom/google/android/gms/ads/internal/overlay/zzq;

.field public final zzNN:I

.field public final zzNO:Lcom/google/android/gms/internal/zzif;

.field public final zzNP:Ljava/lang/String;

.field public final zzNQ:Lcom/google/android/gms/ads/internal/zzn;

.field public final zzvn:Lcom/google/android/gms/internal/zzqh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzg;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/overlay/zzg;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Landroid/os/IBinder;Ljava/lang/String;ZLjava/lang/String;Landroid/os/IBinder;IILjava/lang/String;Lcom/google/android/gms/internal/zzqh;Landroid/os/IBinder;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzn;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNE:Lcom/google/android/gms/ads/internal/overlay/zzc;

    invoke-static {p2}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzcd(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzdx;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNF:Lcom/google/android/gms/internal/zzdx;

    invoke-static {p3}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzcd(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/overlay/zzh;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNG:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-static {p4}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzcd(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzqw;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNH:Lcom/google/android/gms/internal/zzqw;

    invoke-static {p5}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzcd(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzhz;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNI:Lcom/google/android/gms/internal/zzhz;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNJ:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNK:Z

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNL:Ljava/lang/String;

    invoke-static {p9}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzcd(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/overlay/zzq;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNM:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iput p10, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    iput p11, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNN:I

    iput-object p12, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    iput-object p13, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzvn:Lcom/google/android/gms/internal/zzqh;

    invoke-static/range {p14 .. p14}, Lcom/google/android/gms/dynamic/IObjectWrapper$zza;->zzcd(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/dynamic/zzd;->zzF(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/zzif;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNO:Lcom/google/android/gms/internal/zzif;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNP:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNQ:Lcom/google/android/gms/ads/internal/zzn;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/ads/internal/overlay/zzc;Lcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/ads/internal/overlay/zzh;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/zzqh;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNE:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNF:Lcom/google/android/gms/internal/zzdx;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNG:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNH:Lcom/google/android/gms/internal/zzqw;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNI:Lcom/google/android/gms/internal/zzhz;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNJ:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNK:Z

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNL:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNM:Lcom/google/android/gms/ads/internal/overlay/zzq;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNN:I

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzvn:Lcom/google/android/gms/internal/zzqh;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNO:Lcom/google/android/gms/internal/zzif;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNP:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNQ:Lcom/google/android/gms/ads/internal/zzn;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/ads/internal/overlay/zzh;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/zzqw;ILcom/google/android/gms/internal/zzqh;Ljava/lang/String;Lcom/google/android/gms/ads/internal/zzn;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNE:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNF:Lcom/google/android/gms/internal/zzdx;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNG:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNH:Lcom/google/android/gms/internal/zzqw;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNI:Lcom/google/android/gms/internal/zzhz;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNJ:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNK:Z

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNL:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNM:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iput p5, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNN:I

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzvn:Lcom/google/android/gms/internal/zzqh;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNO:Lcom/google/android/gms/internal/zzif;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNP:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNQ:Lcom/google/android/gms/ads/internal/zzn;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/ads/internal/overlay/zzh;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/zzqw;ZILcom/google/android/gms/internal/zzqh;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNE:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNF:Lcom/google/android/gms/internal/zzdx;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNG:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNH:Lcom/google/android/gms/internal/zzqw;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNI:Lcom/google/android/gms/internal/zzhz;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNJ:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNK:Z

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNL:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNM:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iput p6, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNN:I

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzvn:Lcom/google/android/gms/internal/zzqh;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNO:Lcom/google/android/gms/internal/zzif;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNP:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNQ:Lcom/google/android/gms/ads/internal/zzn;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/ads/internal/overlay/zzh;Lcom/google/android/gms/internal/zzhz;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/zzqw;ZILjava/lang/String;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzif;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNE:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNF:Lcom/google/android/gms/internal/zzdx;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNG:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNH:Lcom/google/android/gms/internal/zzqw;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNI:Lcom/google/android/gms/internal/zzhz;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNJ:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNK:Z

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNL:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNM:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iput p7, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNN:I

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzvn:Lcom/google/android/gms/internal/zzqh;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNO:Lcom/google/android/gms/internal/zzif;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNP:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNQ:Lcom/google/android/gms/ads/internal/zzn;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzdx;Lcom/google/android/gms/ads/internal/overlay/zzh;Lcom/google/android/gms/internal/zzhz;Lcom/google/android/gms/ads/internal/overlay/zzq;Lcom/google/android/gms/internal/zzqw;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzqh;Lcom/google/android/gms/internal/zzif;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNE:Lcom/google/android/gms/ads/internal/overlay/zzc;

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNF:Lcom/google/android/gms/internal/zzdx;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNG:Lcom/google/android/gms/ads/internal/overlay/zzh;

    iput-object p5, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNH:Lcom/google/android/gms/internal/zzqw;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNI:Lcom/google/android/gms/internal/zzhz;

    iput-object p9, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNJ:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNK:Z

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNL:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNM:Lcom/google/android/gms/ads/internal/overlay/zzq;

    iput p7, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->orientation:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNN:I

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->url:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzvn:Lcom/google/android/gms/internal/zzqh;

    iput-object p11, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNO:Lcom/google/android/gms/internal/zzif;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNP:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNQ:Lcom/google/android/gms/ads/internal/zzn;

    return-void
.end method

.method public static zza(Landroid/content/Intent;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-void
.end method

.method public static zzb(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;
    .locals 2

    :try_start_0
    const-string v0, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    const-class v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "com.google.android.gms.ads.inernal.overlay.AdOverlayInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/ads/internal/overlay/zzg;->zza(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Landroid/os/Parcel;I)V

    return-void
.end method

.method zzhN()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNF:Lcom/google/android/gms/internal/zzdx;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzhO()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNG:Lcom/google/android/gms/ads/internal/overlay/zzh;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzhP()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNH:Lcom/google/android/gms/internal/zzqw;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzhQ()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNI:Lcom/google/android/gms/internal/zzhz;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzhR()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNO:Lcom/google/android/gms/internal/zzif;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method zzhS()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzNM:Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/zzd;->zzA(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/dynamic/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
