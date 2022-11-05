.class Lcom/google/android/gms/internal/zzqx$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzqx;->zzlT()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzZP:Lcom/google/android/gms/internal/zzqx;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzqx;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzqx$1;->zzZP:Lcom/google/android/gms/internal/zzqx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx$1;->zzZP:Lcom/google/android/gms/internal/zzqx;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqx;->zzZK:Lcom/google/android/gms/internal/zzot;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx$1;->zzZP:Lcom/google/android/gms/internal/zzqx;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqx;->zzZK:Lcom/google/android/gms/internal/zzot;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzqx$1;->zzZP:Lcom/google/android/gms/internal/zzqx;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzqx;->zzIs:Lcom/google/android/gms/internal/zzqw;

    :cond_0
    return-void
.end method
