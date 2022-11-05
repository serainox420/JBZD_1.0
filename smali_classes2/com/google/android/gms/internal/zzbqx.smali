.class public Lcom/google/android/gms/internal/zzbqx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbqy;


# instance fields
.field private final zzchL:Lcom/google/android/gms/internal/zzbpc;

.field private final zzchN:Lcom/google/android/gms/internal/zzbqy$zza;

.field private final zzchR:Lcom/google/firebase/database/b;

.field private final zzchS:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/zzbqy$zza;Lcom/google/android/gms/internal/zzbpc;Lcom/google/firebase/database/b;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqx;->zzchN:Lcom/google/android/gms/internal/zzbqy$zza;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbqx;->zzchL:Lcom/google/android/gms/internal/zzbpc;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbqx;->zzchR:Lcom/google/firebase/database/b;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbqx;->zzchS:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqx;->zzchN:Lcom/google/android/gms/internal/zzbqy$zza;

    sget-object v1, Lcom/google/android/gms/internal/zzbqy$zza;->zzchX:Lcom/google/android/gms/internal/zzbqy$zza;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbqx;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqx;->zzchN:Lcom/google/android/gms/internal/zzbqy$zza;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbqx;->zzchR:Lcom/google/firebase/database/b;

    invoke-virtual {v2, v4}, Lcom/google/firebase/database/b;->a(Z)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ": "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbqx;->zzWM()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqx;->zzchN:Lcom/google/android/gms/internal/zzbqy$zza;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbqx;->zzchR:Lcom/google/firebase/database/b;

    invoke-virtual {v2}, Lcom/google/firebase/database/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbqx;->zzchR:Lcom/google/firebase/database/b;

    invoke-virtual {v3, v4}, Lcom/google/firebase/database/b;->a(Z)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0xa

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public zzWM()Lcom/google/android/gms/internal/zzbph;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqx;->zzchR:Lcom/google/firebase/database/b;

    invoke-virtual {v0}, Lcom/google/firebase/database/b;->a()Lcom/google/firebase/database/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/firebase/database/d;->c()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbqx;->zzchN:Lcom/google/android/gms/internal/zzbqy$zza;

    sget-object v2, Lcom/google/android/gms/internal/zzbqy$zza;->zzchX:Lcom/google/android/gms/internal/zzbqy$zza;

    if-ne v1, v2, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbph;->zzYU()Lcom/google/android/gms/internal/zzbph;

    move-result-object v0

    goto :goto_0
.end method

.method public zzZT()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqx;->zzchL:Lcom/google/android/gms/internal/zzbpc;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/zzbpc;->zza(Lcom/google/android/gms/internal/zzbqx;)V

    return-void
.end method

.method public zzZV()Lcom/google/android/gms/internal/zzbqy$zza;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqx;->zzchN:Lcom/google/android/gms/internal/zzbqy$zza;

    return-object v0
.end method

.method public zzZY()Lcom/google/firebase/database/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqx;->zzchR:Lcom/google/firebase/database/b;

    return-object v0
.end method

.method public zzZZ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqx;->zzchS:Ljava/lang/String;

    return-object v0
.end method
