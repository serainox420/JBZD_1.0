.class Lcom/google/android/gms/internal/zzji$zzd$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzji$zzd$3;->zza(Lcom/google/android/gms/internal/zzjf;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzKi:Lcom/google/android/gms/internal/zzjf;

.field final synthetic zzKj:Lcom/google/android/gms/internal/zzji$zzd$3;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzji$zzd$3;Lcom/google/android/gms/internal/zzjf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzji$zzd$3$1;->zzKj:Lcom/google/android/gms/internal/zzji$zzd$3;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzji$zzd$3$1;->zzKi:Lcom/google/android/gms/internal/zzjf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$zzd$3$1;->zzKj:Lcom/google/android/gms/internal/zzji$zzd$3;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzji$zzd$3;->zzKh:Lcom/google/android/gms/internal/zzji$zzd;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzji$zzd;->zza(Lcom/google/android/gms/internal/zzji$zzd;)Lcom/google/android/gms/internal/zzpt;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzji$zzd$3$1;->zzKi:Lcom/google/android/gms/internal/zzjf;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/zzpt;->zzd(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzji$zzd$3$1;->zzKi:Lcom/google/android/gms/internal/zzjf;

    invoke-interface {v0}, Lcom/google/android/gms/internal/zzjf;->destroy()V

    return-void
.end method
