.class Lcom/google/android/gms/internal/zzbbb$zza;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbbb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zza"
.end annotation


# instance fields
.field final synthetic zzbJq:Lcom/google/android/gms/internal/zzbbb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbbb;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbbb$zza;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbbb;Lcom/google/android/gms/internal/zzbbb$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbbb$zza;-><init>(Lcom/google/android/gms/internal/zzbbb;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$zza;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbbb;->zza(Lcom/google/android/gms/internal/zzbbb;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$zza;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbb;->zzd(Lcom/google/android/gms/internal/zzbbb;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Container "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " loading failed."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->zzbh(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$zza;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbb;->zzi(Lcom/google/android/gms/internal/zzbbb;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$zza;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbb;->zzi(Lcom/google/android/gms/internal/zzbbb;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/zzbbi;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbbi;->zzRX()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$zza;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbb;->zzj(Lcom/google/android/gms/internal/zzbbb;)Lcom/google/android/gms/tagmanager/zzbb;

    move-result-object v0

    const-string v1, "app"

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbbi;->zzRU()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbbi;->zzRV()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbbi;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/tagmanager/zzbb;->zza(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;J)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbbi;->zzRU()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Logged event "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to Firebase (marked as passthrough)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Error logging event with measurement proxy:"

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbbb$zza;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzbbb;->zzk(Lcom/google/android/gms/internal/zzbbb;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/zzbbe;->zza(Ljava/lang/String;Ljava/lang/Throwable;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Lcom/google/android/gms/internal/zzbbi;->zzRU()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x2d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Discarded event "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (marked as non-passthrough)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/zzbbu;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbbb$zza;->zzbJq:Lcom/google/android/gms/internal/zzbbb;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbbb;->zza(Lcom/google/android/gms/internal/zzbbb;Ljava/util/List;)Ljava/util/List;

    :cond_2
    return-void
.end method
