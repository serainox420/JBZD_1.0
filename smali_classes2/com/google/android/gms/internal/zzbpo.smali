.class public Lcom/google/android/gms/internal/zzbpo;
.super Ljava/lang/Object;


# instance fields
.field private zzcfC:Lcom/google/android/gms/internal/zzbsc;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzbrv;->zzaaZ()Lcom/google/android/gms/internal/zzbrv;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzcfC:Lcom/google/android/gms/internal/zzbsc;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbsc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbpo;->zzcfC:Lcom/google/android/gms/internal/zzbsc;

    return-void
.end method


# virtual methods
.method public zzZf()Lcom/google/android/gms/internal/zzbsc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzcfC:Lcom/google/android/gms/internal/zzbsc;

    return-object v0
.end method

.method public zzg(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzcfC:Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/zzbsc;->zzl(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbsc;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzcfC:Lcom/google/android/gms/internal/zzbsc;

    return-void
.end method

.method public zzq(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbpo;->zzcfC:Lcom/google/android/gms/internal/zzbsc;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzbsc;->zzO(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbsc;

    move-result-object v0

    return-object v0
.end method
