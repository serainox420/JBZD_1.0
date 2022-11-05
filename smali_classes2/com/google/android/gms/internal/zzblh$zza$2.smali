.class Lcom/google/android/gms/internal/zzblh$zza$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzblh$zza;->zzUL()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzbWe:Lcom/google/android/gms/internal/zzblh$zza;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzblh$zza;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzblh$zza$2;->zzbWe:Lcom/google/android/gms/internal/zzblh$zza;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblh$zza$2;->zzbWe:Lcom/google/android/gms/internal/zzblh$zza;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/zzblh$zza;->doFrame(J)V

    return-void
.end method
