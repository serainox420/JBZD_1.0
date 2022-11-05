.class final Lcom/google/android/gms/internal/zzbwe;
.super Lcom/google/android/gms/internal/zzbvc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/zzbvc",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final zzcpk:Lcom/google/android/gms/internal/zzbvc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbvc",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final zzcrg:Lcom/google/android/gms/internal/zzbuk;

.field private final zzcrh:Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/zzbuk;Lcom/google/android/gms/internal/zzbvc;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbuk;",
            "Lcom/google/android/gms/internal/zzbvc",
            "<TT;>;",
            "Ljava/lang/reflect/Type;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbvc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbwe;->zzcrg:Lcom/google/android/gms/internal/zzbuk;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbwe;->zzcpk:Lcom/google/android/gms/internal/zzbvc;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbwe;->zzcrh:Ljava/lang/reflect/Type;

    return-void
.end method

.method private zzb(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;
    .locals 1

    if-eqz p2, :cond_1

    const-class v0, Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbwj;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwe;->zzcpk:Lcom/google/android/gms/internal/zzbvc;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwe;->zzcrh:Ljava/lang/reflect/Type;

    invoke-direct {p0, v1, p2}, Lcom/google/android/gms/internal/zzbwe;->zzb(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbwe;->zzcrh:Ljava/lang/reflect/Type;

    if-eq v1, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwe;->zzcrg:Lcom/google/android/gms/internal/zzbuk;

    invoke-static {v1}, Lcom/google/android/gms/internal/zzbwg;->zzl(Ljava/lang/reflect/Type;)Lcom/google/android/gms/internal/zzbwg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbuk;->zza(Lcom/google/android/gms/internal/zzbwg;)Lcom/google/android/gms/internal/zzbvc;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzbwb$zza;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbvc;->zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbwe;->zzcpk:Lcom/google/android/gms/internal/zzbvc;

    instance-of v1, v1, Lcom/google/android/gms/internal/zzbwb$zza;

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwe;->zzcpk:Lcom/google/android/gms/internal/zzbvc;

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbwh;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwe;->zzcpk:Lcom/google/android/gms/internal/zzbvc;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbvc;->zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
