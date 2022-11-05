.class public Lcom/google/android/gms/wallet/firstparty/InitializeBuyFlowRequest;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/wallet/firstparty/InitializeBuyFlowRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzaiI:I

.field zzbRJ:[[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/wallet/firstparty/zzl;

    invoke-direct {v0}, Lcom/google/android/gms/wallet/firstparty/zzl;-><init>()V

    sput-object v0, Lcom/google/android/gms/wallet/firstparty/InitializeBuyFlowRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(I[[B)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput p1, p0, Lcom/google/android/gms/wallet/firstparty/InitializeBuyFlowRequest;->zzaiI:I

    iput-object p2, p0, Lcom/google/android/gms/wallet/firstparty/InitializeBuyFlowRequest;->zzbRJ:[[B

    return-void
.end method


# virtual methods
.method public getVersionCode()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/wallet/firstparty/InitializeBuyFlowRequest;->zzaiI:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/wallet/firstparty/zzl;->zza(Lcom/google/android/gms/wallet/firstparty/InitializeBuyFlowRequest;Landroid/os/Parcel;I)V

    return-void
.end method
