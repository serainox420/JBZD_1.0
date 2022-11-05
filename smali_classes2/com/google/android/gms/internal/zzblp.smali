.class public Lcom/google/android/gms/internal/zzblp;
.super Ljava/lang/Object;


# instance fields
.field private zzbWS:Ljava/lang/String;

.field private zzbWT:Ljava/lang/String;

.field private zzbWU:Ljava/lang/String;

.field private zzbWV:Ljava/lang/String;

.field private zzbWW:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "_exp_set"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblp;->zzbWS:Ljava/lang/String;

    const-string v0, "_exp_activate"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblp;->zzbWT:Ljava/lang/String;

    const-string v0, "_exp_timeout"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblp;->zzbWU:Ljava/lang/String;

    const-string v0, "_exp_expire"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblp;->zzbWV:Ljava/lang/String;

    const-string v0, "_exp_clear"

    iput-object v0, p0, Lcom/google/android/gms/internal/zzblp;->zzbWW:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zzUZ()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblp;->zzbWS:Ljava/lang/String;

    return-object v0
.end method

.method public zzVa()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblp;->zzbWT:Ljava/lang/String;

    return-object v0
.end method

.method public zzVb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblp;->zzbWU:Ljava/lang/String;

    return-object v0
.end method

.method public zzVc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblp;->zzbWV:Ljava/lang/String;

    return-object v0
.end method

.method public zzVd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzblp;->zzbWW:Ljava/lang/String;

    return-object v0
.end method
