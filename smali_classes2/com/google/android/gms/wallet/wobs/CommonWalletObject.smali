.class public Lcom/google/android/gms/wallet/wobs/CommonWalletObject;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/wobs/CommonWalletObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field name:Ljava/lang/String;

.field state:I

.field zzbQA:Ljava/lang/String;

.field zzbQB:Ljava/lang/String;

.field zzbQC:Ljava/lang/String;

.field zzbQD:Ljava/lang/String;

.field zzbQE:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/zzp;",
            ">;"
        }
    .end annotation
.end field

.field zzbQF:Lcom/google/android/gms/wallet/wobs/zzl;

.field zzbQG:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field zzbQH:Ljava/lang/String;

.field zzbQI:Ljava/lang/String;

.field zzbQJ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/zzd;",
            ">;"
        }
    .end annotation
.end field

.field zzbQK:Z

.field zzbQL:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/zzn;",
            ">;"
        }
    .end annotation
.end field

.field zzbQM:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/zzj;",
            ">;"
        }
    .end annotation
.end field

.field zzbQN:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/zzn;",
            ">;"
        }
    .end annotation
.end field

.field zzbQx:Ljava/lang/String;

.field zzbQz:Ljava/lang/String;

.field zzkl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/wobs/zza;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/wobs/zza;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    invoke-static {}, Lcom/google/android/gms/common/util/zzb;->zzyY()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzbQE:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/common/util/zzb;->zzyY()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzbQG:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/common/util/zzb;->zzyY()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzbQJ:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/common/util/zzb;->zzyY()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzbQL:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/common/util/zzb;->zzyY()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzbQM:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/common/util/zzb;->zzyY()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzbQN:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Lcom/google/android/gms/wallet/wobs/zzl;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/zzp;",
            ">;",
            "Lcom/google/android/gms/wallet/wobs/zzl;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/zzd;",
            ">;Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/zzn;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/zzj;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/wallet/wobs/zzn;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzkl:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzbQD:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzbQx:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzbQz:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzbQA:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzbQB:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzbQC:Ljava/lang/String;

    iput p9, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->state:I

    iput-object p10, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzbQE:Ljava/util/ArrayList;

    iput-object p11, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzbQF:Lcom/google/android/gms/wallet/wobs/zzl;

    iput-object p12, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzbQG:Ljava/util/ArrayList;

    iput-object p13, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzbQH:Ljava/lang/String;

    iput-object p14, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzbQI:Ljava/lang/String;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzbQJ:Ljava/util/ArrayList;

    move/from16 v0, p16

    iput-boolean v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzbQK:Z

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzbQL:Ljava/util/ArrayList;

    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzbQM:Ljava/util/ArrayList;

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzbQN:Ljava/util/ArrayList;

    return-void
.end method

.method public static zzUc()Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;
    .locals 3

    new-instance v0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;

    new-instance v1, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;

    invoke-direct {v1}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/wallet/wobs/CommonWalletObject$zza;-><init>(Lcom/google/android/gms/wallet/wobs/CommonWalletObject;Lcom/google/android/gms/wallet/wobs/CommonWalletObject$1;)V

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/wobs/CommonWalletObject;->zzkl:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/wobs/zza;->zza(Lcom/google/android/gms/wallet/wobs/CommonWalletObject;Landroid/os/Parcel;I)V

    return-void
.end method
