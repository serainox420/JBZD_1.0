.class Lcom/google/android/gms/internal/zzbcj$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzbcj$6;->onTrimMemory(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbKY:Lcom/google/android/gms/internal/zzbcj$6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbcj$6;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbcj$6$1;->zzbKY:Lcom/google/android/gms/internal/zzbcj$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    const-string v0, "App\'s UI deactivated. Dispatching hits."

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbcj$6$1;->zzbKY:Lcom/google/android/gms/internal/zzbcj$6;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzbcj$6;->zzbKN:Lcom/google/android/gms/internal/zzbcj;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbcj;->zzb(Lcom/google/android/gms/internal/zzbcj;)Lcom/google/android/gms/internal/zzbcm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbcm;->dispatch()V

    return-void
.end method
