.class public Lcom/google/android/gms/internal/zztx$zza;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zztx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zztx$zza;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzahr:Landroid/accounts/Account;

.field public final zzahs:Z

.field public final zzaht:Z

.field public final zzahu:Z

.field public final zzahv:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzty;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzty;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zztx$zza;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move v3, v2

    move v4, v2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zztx$zza;-><init>(Landroid/accounts/Account;ZZZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;ZZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zztx$zza;->zzahr:Landroid/accounts/Account;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/zztx$zza;->zzahs:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/zztx$zza;->zzaht:Z

    iput-boolean p4, p0, Lcom/google/android/gms/internal/zztx$zza;->zzahu:Z

    iput-object p5, p0, Lcom/google/android/gms/internal/zztx$zza;->zzahv:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzty;->zza(Lcom/google/android/gms/internal/zztx$zza;Landroid/os/Parcel;I)V

    return-void
.end method
