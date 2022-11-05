.class public Lcom/google/android/gms/internal/zzaer;
.super Lcom/google/android/gms/awareness/fence/FenceQueryRequest;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzaer$zza;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/google/android/gms/internal/zzaer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final zzaJr:Lcom/google/android/gms/internal/zzaer$zza;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzaes;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzaes;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzaer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaer$zza;->zza(ILjava/util/List;)Lcom/google/android/gms/internal/zzaer$zza;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaer;-><init>(Lcom/google/android/gms/internal/zzaer$zza;)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/internal/zzaer$zza;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/awareness/fence/FenceQueryRequest;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzaer;->zzaJr:Lcom/google/android/gms/internal/zzaer$zza;

    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaer$zza;->zza(ILjava/util/List;)Lcom/google/android/gms/internal/zzaer$zza;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaer;-><init>(Lcom/google/android/gms/internal/zzaer$zza;)V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzaer$zza;->zza(ILjava/util/List;)Lcom/google/android/gms/internal/zzaer$zza;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzaer;-><init>(Lcom/google/android/gms/internal/zzaer$zza;)V

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzaes;->zza(Lcom/google/android/gms/internal/zzaer;Landroid/os/Parcel;I)V

    return-void
.end method
