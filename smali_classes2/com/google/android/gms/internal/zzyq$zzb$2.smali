.class Lcom/google/android/gms/internal/zzyq$zzb$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzyq$zzb;->zzb(Lcom/google/android/gms/internal/zzys;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzawr:Lcom/google/android/gms/internal/zzyq;

.field final synthetic zzawt:Lcom/google/android/gms/internal/zzys;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzyq$zzb;Lcom/google/android/gms/internal/zzyq;Lcom/google/android/gms/internal/zzys;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzyq$zzb$2;->zzawr:Lcom/google/android/gms/internal/zzyq;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzyq$zzb$2;->zzawt:Lcom/google/android/gms/internal/zzys;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzyq$zzb$2;->zzawr:Lcom/google/android/gms/internal/zzyq;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzyq$zzb$2;->zzawt:Lcom/google/android/gms/internal/zzys;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzyq;->zza(Lcom/google/android/gms/internal/zzyq;Lcom/google/android/gms/internal/zzys;)V

    return-void
.end method
