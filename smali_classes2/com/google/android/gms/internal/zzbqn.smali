.class public Lcom/google/android/gms/internal/zzbqn;
.super Ljava/lang/Object;


# static fields
.field private static final zzchh:Lcom/google/android/gms/internal/zzbqr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbqr",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzchi:Lcom/google/android/gms/internal/zzbqr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbqr",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzchj:Lcom/google/android/gms/internal/zzbqq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbqq",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzchk:Lcom/google/android/gms/internal/zzbqq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbqq",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final zzchg:Lcom/google/android/gms/internal/zzbqq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbqq",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzbqn$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbqn$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbqn;->zzchh:Lcom/google/android/gms/internal/zzbqr;

    new-instance v0, Lcom/google/android/gms/internal/zzbqn$2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbqn$2;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbqn;->zzchi:Lcom/google/android/gms/internal/zzbqr;

    new-instance v0, Lcom/google/android/gms/internal/zzbqq;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbqq;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbqn;->zzchj:Lcom/google/android/gms/internal/zzbqq;

    new-instance v0, Lcom/google/android/gms/internal/zzbqq;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbqq;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/google/android/gms/internal/zzbqn;->zzchk:Lcom/google/android/gms/internal/zzbqq;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/gms/internal/zzbqq;->zzZN()Lcom/google/android/gms/internal/zzbqq;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbqn;->zzchg:Lcom/google/android/gms/internal/zzbqq;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzbqq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbqq",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbqn;->zzchg:Lcom/google/android/gms/internal/zzbqq;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/google/android/gms/internal/zzbqn;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/zzbqn;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbqn;->zzchg:Lcom/google/android/gms/internal/zzbqq;

    iget-object v3, p1, Lcom/google/android/gms/internal/zzbqn;->zzchg:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/zzbqq;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqn;->zzchg:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqq;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqn;->zzchg:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqq;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xe

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "{PruneForest:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public zzZI()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqn;->zzchg:Lcom/google/android/gms/internal/zzbqq;

    sget-object v1, Lcom/google/android/gms/internal/zzbqn;->zzchi:Lcom/google/android/gms/internal/zzbqr;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbqq;->zzb(Lcom/google/android/gms/internal/zzbqr;)Z

    move-result v0

    return v0
.end method

.method public zza(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbqq$zza;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/android/gms/internal/zzbqq$zza",
            "<",
            "Ljava/lang/Void;",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqn;->zzchg:Lcom/google/android/gms/internal/zzbqq;

    new-instance v1, Lcom/google/android/gms/internal/zzbqn$3;

    invoke-direct {v1, p0, p2}, Lcom/google/android/gms/internal/zzbqn$3;-><init>(Lcom/google/android/gms/internal/zzbqn;Lcom/google/android/gms/internal/zzbqq$zza;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzbqq;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbqq$zza;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbqn;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqn;->zzchg:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqq;->zze(Lcom/google/android/gms/internal/zzbrq;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/zzbqq;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqn;->zzchg:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbqq;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/zzbqn;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbqn;-><init>(Lcom/google/android/gms/internal/zzbqq;)V

    return-object v1

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqn;->zzchg:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/zzbph;->zzYP()Lcom/google/android/gms/internal/zzbph;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqn;->zzchg:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbqq;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzbqq;->zzb(Lcom/google/android/gms/internal/zzbph;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public zzw(Lcom/google/android/gms/internal/zzbph;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqn;->zzchg:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqq;->zzH(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzx(Lcom/google/android/gms/internal/zzbph;)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqn;->zzchg:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbqq;->zzH(Lcom/google/android/gms/internal/zzbph;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public zzy(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqn;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqn;->zzchg:Lcom/google/android/gms/internal/zzbqq;

    sget-object v1, Lcom/google/android/gms/internal/zzbqn;->zzchh:Lcom/google/android/gms/internal/zzbqr;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzbqq;->zzb(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqr;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t prune path that was kept previously!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqn;->zzchg:Lcom/google/android/gms/internal/zzbqq;

    sget-object v1, Lcom/google/android/gms/internal/zzbqn;->zzchi:Lcom/google/android/gms/internal/zzbqr;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzbqq;->zzb(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqr;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-object p0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqn;->zzchg:Lcom/google/android/gms/internal/zzbqq;

    sget-object v1, Lcom/google/android/gms/internal/zzbqn;->zzchj:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzbqq;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v0

    new-instance p0, Lcom/google/android/gms/internal/zzbqn;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbqn;-><init>(Lcom/google/android/gms/internal/zzbqq;)V

    goto :goto_0
.end method

.method public zzz(Lcom/google/android/gms/internal/zzbph;)Lcom/google/android/gms/internal/zzbqn;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqn;->zzchg:Lcom/google/android/gms/internal/zzbqq;

    sget-object v1, Lcom/google/android/gms/internal/zzbqn;->zzchh:Lcom/google/android/gms/internal/zzbqr;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzbqq;->zzb(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqr;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbqn;->zzchg:Lcom/google/android/gms/internal/zzbqq;

    sget-object v1, Lcom/google/android/gms/internal/zzbqn;->zzchk:Lcom/google/android/gms/internal/zzbqq;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/zzbqq;->zza(Lcom/google/android/gms/internal/zzbph;Lcom/google/android/gms/internal/zzbqq;)Lcom/google/android/gms/internal/zzbqq;

    move-result-object v0

    new-instance p0, Lcom/google/android/gms/internal/zzbqn;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbqn;-><init>(Lcom/google/android/gms/internal/zzbqq;)V

    goto :goto_0
.end method
