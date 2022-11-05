.class public Lcom/google/firebase/appindexing/internal/zzi;
.super Lcom/google/android/gms/common/internal/safeparcel/zza;

# interfaces
.implements Lcom/google/android/gms/common/api/Result;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/firebase/appindexing/internal/zzi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/android/gms/common/api/Status;

.field private final b:Lcom/google/firebase/appindexing/internal/Thing;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/appindexing/internal/c;

    invoke-direct {v0}, Lcom/google/firebase/appindexing/internal/c;-><init>()V

    sput-object v0, Lcom/google/firebase/appindexing/internal/zzi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Lcom/google/firebase/appindexing/internal/Thing;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/zza;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/appindexing/internal/zzi;->a:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/firebase/appindexing/internal/zzi;->b:Lcom/google/firebase/appindexing/internal/Thing;

    return-void
.end method


# virtual methods
.method public a()Lcom/google/firebase/appindexing/internal/Thing;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/zzi;->b:Lcom/google/firebase/appindexing/internal/Thing;

    return-object v0
.end method

.method public getStatus()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/appindexing/internal/zzi;->a:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/firebase/appindexing/internal/c;->a(Lcom/google/firebase/appindexing/internal/zzi;Landroid/os/Parcel;I)V

    return-void
.end method
