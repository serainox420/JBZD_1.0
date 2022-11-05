.class Lcom/google/android/gms/internal/zzpv$zzb$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzpv$zzb;->zzi(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic zzYv:Ljava/io/InputStream;

.field final synthetic zzYw:Lcom/google/android/gms/internal/zzpv$zzb;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzpv$zzb;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzpv$zzb$2;->zzYw:Lcom/google/android/gms/internal/zzpv$zzb;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzpv$zzb$2;->zzYv:Ljava/io/InputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzpv$zzb$2;->zzYw:Lcom/google/android/gms/internal/zzpv$zzb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzpv$zzb;->zza(Lcom/google/android/gms/internal/zzpv$zzb;)Lcom/google/android/gms/internal/zzpv$zza;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzpv$zzb$2;->zzYv:Ljava/io/InputStream;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpv$zza;->zzh(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
