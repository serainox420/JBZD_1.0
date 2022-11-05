.class public final Lcom/google/android/gms/wallet/LoyaltyWalletObject;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/LoyaltyWalletObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field state:I

.field zzaJT:Ljava/lang/String;

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

.field zzbQO:Lcom/google/android/gms/wallet/wobs/zzf;

.field zzbQw:Ljava/lang/String;

.field zzbQx:Ljava/lang/String;

.field zzbQy:Ljava/lang/String;

.field zzbQz:Ljava/lang/String;

.field zzkl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/zzm;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzm;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    invoke-static {}, Lcom/google/android/gms/common/util/zzb;->zzyY()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQE:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/common/util/zzb;->zzyY()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQG:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/common/util/zzb;->zzyY()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQJ:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/common/util/zzb;->zzyY()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQL:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/common/util/zzb;->zzyY()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQM:Ljava/util/ArrayList;

    invoke-static {}, Lcom/google/android/gms/common/util/zzb;->zzyY()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQN:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;Lcom/google/android/gms/wallet/wobs/zzl;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/google/android/gms/wallet/wobs/zzf;)V
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
            ">;",
            "Lcom/google/android/gms/wallet/wobs/zzf;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzkl:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQw:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQx:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQy:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaJT:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQz:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQA:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQB:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQC:Ljava/lang/String;

    iput-object p10, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQD:Ljava/lang/String;

    iput p11, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->state:I

    iput-object p12, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQE:Ljava/util/ArrayList;

    iput-object p13, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQF:Lcom/google/android/gms/wallet/wobs/zzl;

    iput-object p14, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQG:Ljava/util/ArrayList;

    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQH:Ljava/lang/String;

    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQI:Ljava/lang/String;

    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQJ:Ljava/util/ArrayList;

    move/from16 v0, p18

    iput-boolean v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQK:Z

    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQL:Ljava/util/ArrayList;

    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQM:Ljava/util/ArrayList;

    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQN:Ljava/util/ArrayList;

    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQO:Lcom/google/android/gms/wallet/wobs/zzf;

    return-void
.end method


# virtual methods
.method public getAccountId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQw:Ljava/lang/String;

    return-object v0
.end method

.method public getAccountName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzaJT:Ljava/lang/String;

    return-object v0
.end method

.method public getBarcodeAlternateText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQz:Ljava/lang/String;

    return-object v0
.end method

.method public getBarcodeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQA:Ljava/lang/String;

    return-object v0
.end method

.method public getBarcodeValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQB:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzkl:Ljava/lang/String;

    return-object v0
.end method

.method public getIssuerName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQx:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/wallet/LoyaltyWalletObject;->zzbQy:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zzm;->zza(Lcom/google/android/gms/wallet/LoyaltyWalletObject;Landroid/os/Parcel;I)V

    return-void
.end method
