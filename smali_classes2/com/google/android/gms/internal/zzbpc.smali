.class public abstract Lcom/google/android/gms/internal/zzbpc;
.super Ljava/lang/Object;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private zzceb:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private zzcec:Lcom/google/android/gms/internal/zzbpd;

.field private zzced:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/gms/internal/zzbpc;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/zzbpc;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpc;->zzceb:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/zzbpc;->zzced:Z

    return-void
.end method


# virtual methods
.method public zzYK()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpc;->zzceb:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpc;->zzcec:Lcom/google/android/gms/internal/zzbpd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpc;->zzcec:Lcom/google/android/gms/internal/zzbpd;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/zzbpd;->zzd(Lcom/google/android/gms/internal/zzbpc;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpc;->zzcec:Lcom/google/android/gms/internal/zzbpd;

    :cond_0
    return-void
.end method

.method public zzYL()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpc;->zzceb:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public zzYM()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbpc;->zzced:Z

    return v0
.end method

.method public abstract zzYn()Lcom/google/android/gms/internal/zzbrc;
.end method

.method public abstract zza(Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbpc;
.end method

.method public abstract zza(Lcom/google/android/gms/internal/zzbqw;Lcom/google/android/gms/internal/zzbrc;)Lcom/google/android/gms/internal/zzbqx;
.end method

.method public zza(Lcom/google/android/gms/internal/zzbpd;)V
    .locals 1

    sget-boolean v0, Lcom/google/android/gms/internal/zzbpc;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbpc;->zzYL()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    sget-boolean v0, Lcom/google/android/gms/internal/zzbpc;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpc;->zzcec:Lcom/google/android/gms/internal/zzbpd;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpc;->zzcec:Lcom/google/android/gms/internal/zzbpd;

    return-void
.end method

.method public abstract zza(Lcom/google/android/gms/internal/zzbqx;)V
.end method

.method public abstract zza(Lcom/google/firebase/database/c;)V
.end method

.method public abstract zza(Lcom/google/android/gms/internal/zzbqy$zza;)Z
.end method

.method public zzbf(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/zzbpc;->zzced:Z

    return-void
.end method

.method public abstract zzc(Lcom/google/android/gms/internal/zzbpc;)Z
.end method
