.class public Lcom/google/android/gms/nearby/connection/zzg$zzb;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/nearby/connection/zzg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zzb"
.end annotation


# instance fields
.field private final zzbyd:Landroid/os/ParcelFileDescriptor;

.field private final zzbyf:Ljava/io/InputStream;


# direct methods
.method private constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/nearby/connection/zzg$zzb;->zzbyd:Landroid/os/ParcelFileDescriptor;

    iput-object p2, p0, Lcom/google/android/gms/nearby/connection/zzg$zzb;->zzbyf:Ljava/io/InputStream;

    return-void
.end method

.method public static zzc(Landroid/os/ParcelFileDescriptor;)Lcom/google/android/gms/nearby/connection/zzg$zzb;
    .locals 2

    const-string v0, "Cannot create Payload.Stream from null ParcelFileDescriptor."

    invoke-static {p0, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/nearby/connection/zzg$zzb;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/nearby/connection/zzg$zzb;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/io/InputStream;)V

    return-object v0
.end method


# virtual methods
.method public zzOa()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/nearby/connection/zzg$zzb;->zzbyf:Ljava/io/InputStream;

    return-object v0
.end method
