.class Lcom/google/android/gms/internal/zzboq$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbok$zza;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/zzboq$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zzccj:J

.field final synthetic zzcck:Lcom/google/android/gms/internal/zzboq$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzboq$1;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iput-wide p2, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzccj:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    iget-wide v0, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzccj:J

    iget-object v2, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {v2}, Lcom/google/android/gms/internal/zzboq;->zzd(Lcom/google/android/gms/internal/zzboq;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    sget-object v1, Lcom/google/android/gms/internal/zzboq$zzb;->zzccq:Lcom/google/android/gms/internal/zzboq$zzb;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzboq;->zza(Lcom/google/android/gms/internal/zzboq;Lcom/google/android/gms/internal/zzboq$zzb;)Lcom/google/android/gms/internal/zzboq$zzb;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboq;->zza(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object v1

    const-string v2, "Error fetching token: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboq;->zze(Lcom/google/android/gms/internal/zzboq;)V

    :goto_1
    return-void

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboq;->zza(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object v0

    const-string v1, "Ignoring getToken error, because this was not the latest attempt."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public zziL(Ljava/lang/String;)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzccj:J

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboq;->zzd(Lcom/google/android/gms/internal/zzboq;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboq;->zzb(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzboq$zzb;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/zzboq$zzb;->zzccr:Lcom/google/android/gms/internal/zzboq$zzb;

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboq;->zza(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object v0

    const-string v1, "Successfully fetched token, opening connection"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzboq;->zziO(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboq;->zzb(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzboq$zzb;

    move-result-object v0

    sget-object v3, Lcom/google/android/gms/internal/zzboq$zzb;->zzccq:Lcom/google/android/gms/internal/zzboq$zzb;

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_1
    const-string v3, "Expected connection state disconnected, but was %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object v4, v4, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {v4}, Lcom/google/android/gms/internal/zzboq;->zzb(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzboq$zzb;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {v0, v3, v1}, Lcom/google/android/gms/internal/zzbom;->zzc(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboq;->zza(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object v0

    const-string v1, "Not opening connection after token refresh, because connection was set to disconnected"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboq$1$1;->zzcck:Lcom/google/android/gms/internal/zzboq$1;

    iget-object v0, v0, Lcom/google/android/gms/internal/zzboq$1;->zzcci:Lcom/google/android/gms/internal/zzboq;

    invoke-static {v0}, Lcom/google/android/gms/internal/zzboq;->zza(Lcom/google/android/gms/internal/zzboq;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object v0

    const-string v1, "Ignoring getToken result, because this was not the latest attempt."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
