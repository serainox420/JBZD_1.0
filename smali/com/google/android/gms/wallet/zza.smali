.class public final Lcom/google/android/gms/wallet/zza;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field name:Ljava/lang/String;

.field phoneNumber:Ljava/lang/String;

.field zzUI:Ljava/lang/String;

.field zzbPJ:Ljava/lang/String;

.field zzbPK:Ljava/lang/String;

.field zzbhC:Ljava/lang/String;

.field zzbhE:Z

.field zzbhF:Ljava/lang/String;

.field zzbhv:Ljava/lang/String;

.field zzbhw:Ljava/lang/String;

.field zzbhx:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/zzb;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/zzb;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/zza;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/wallet/zza;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/wallet/zza;->zzbhv:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/wallet/zza;->zzbhw:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/wallet/zza;->zzbhx:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/wallet/zza;->zzUI:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/gms/wallet/zza;->zzbPJ:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/gms/wallet/zza;->zzbPK:Ljava/lang/String;

    iput-object p8, p0, Lcom/google/android/gms/wallet/zza;->zzbhC:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/wallet/zza;->phoneNumber:Ljava/lang/String;

    iput-boolean p10, p0, Lcom/google/android/gms/wallet/zza;->zzbhE:Z

    iput-object p11, p0, Lcom/google/android/gms/wallet/zza;->zzbhF:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/zzb;->zza(Lcom/google/android/gms/wallet/zza;Landroid/os/Parcel;I)V

    return-void
.end method
