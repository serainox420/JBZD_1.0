.class Lcom/google/android/gms/internal/zzbnv$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/firebase/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbnv;->zza(Lcom/google/android/gms/internal/zzbpa;Lcom/google/android/gms/internal/zzbol;Lcom/google/android/gms/internal/zzbon;Lcom/google/android/gms/internal/zzbop$zza;)Lcom/google/android/gms/internal/zzbop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzcaD:Lcom/google/android/gms/internal/zzbop;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbnv;Lcom/google/android/gms/internal/zzbop;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbnv$2;->zzcaD:Lcom/google/android/gms/internal/zzbop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public zzat(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnv$2;->zzcaD:Lcom/google/android/gms/internal/zzbop;

    const-string v1, "app_in_background"

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbop;->interrupt(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbnv$2;->zzcaD:Lcom/google/android/gms/internal/zzbop;

    const-string v1, "app_in_background"

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzbop;->resume(Ljava/lang/String;)V

    goto :goto_0
.end method
