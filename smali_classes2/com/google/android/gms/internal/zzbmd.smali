.class abstract Lcom/google/android/gms/internal/zzbmd;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbmd$zza;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SuccessT:",
        "Ljava/lang/Object;",
        "CallbackT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private zzbNF:Z

.field protected zzbXF:Lcom/google/firebase/a;

.field protected final zzbYh:I

.field protected final zzbYi:Lcom/google/android/gms/internal/zzbmd$zza;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbmd$zza;"
        }
    .end annotation
.end field

.field protected zzbYj:Lcom/google/firebase/auth/d;

.field protected zzbYk:Lcom/google/android/gms/internal/zzblz;

.field protected zzbYl:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TCallbackT;"
        }
    .end annotation
.end field

.field protected zzbYm:Lcom/google/android/gms/internal/zzbmc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbmc",
            "<TSuccessT;>;"
        }
    .end annotation
.end field

.field protected zzbYn:Lcom/google/android/gms/internal/zzbmn;

.field protected zzbYo:Lcom/google/android/gms/internal/zzbmj;

.field protected zzbYp:Lcom/google/android/gms/internal/zzbmh;

.field protected zzbYq:Lcom/google/android/gms/internal/zzbmt;

.field protected zzbYr:Ljava/lang/String;

.field zzbYs:Z

.field zzbYt:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TSuccessT;"
        }
    .end annotation
.end field

.field zzbYu:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzbmd$zza;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/zzbmd$zza;-><init>(Lcom/google/android/gms/internal/zzbmd;Lcom/google/android/gms/internal/zzbmd$1;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbmd;->zzbYi:Lcom/google/android/gms/internal/zzbmd$zza;

    iput p1, p0, Lcom/google/android/gms/internal/zzbmd;->zzbYh:I

    return-void
.end method

.method private zzVV()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbmd;->zzVO()V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/zzbmd;->zzbNF:Z

    const-string v1, "no success or failure set on method implementation"

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/zzac;->zza(ZLjava/lang/Object;)V

    return-void
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/zzbmd;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbmd;->zzVV()V

    return-void
.end method


# virtual methods
.method protected abstract dispatch()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract zzVO()V
.end method

.method public zzVU()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbmd;->zzae(Ljava/lang/Object;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbmc;)Lcom/google/android/gms/internal/zzbmd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbmc",
            "<TSuccessT;>;)",
            "Lcom/google/android/gms/internal/zzbmd",
            "<TSuccessT;TCallbackT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbmd;->zzbYm:Lcom/google/android/gms/internal/zzbmc;

    return-object p0
.end method

.method public zza(Lcom/google/android/gms/internal/zzblz;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbmd;->zzbYk:Lcom/google/android/gms/internal/zzblz;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbmd;->dispatch()V

    return-void
.end method

.method public zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbmd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCallbackT;)",
            "Lcom/google/android/gms/internal/zzbmd",
            "<TSuccessT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "external callback cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbmd;->zzbYl:Ljava/lang/Object;

    return-object p0
.end method

.method public zzae(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSuccessT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbmd;->zzbNF:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbmd;->zzbYs:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbmd;->zzbYt:Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmd;->zzbYm:Lcom/google/android/gms/internal/zzbmc;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/zzbmc;->zza(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public zzcf(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbmd;->zzbNF:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/zzbmd;->zzbYs:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbmd;->zzbYu:Lcom/google/android/gms/common/api/Status;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbmd;->zzbYm:Lcom/google/android/gms/internal/zzbmc;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/zzbmc;->zza(Ljava/lang/Object;Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public zze(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbmd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            ")",
            "Lcom/google/android/gms/internal/zzbmd",
            "<TSuccessT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "firebaseApp cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/a;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbmd;->zzbXF:Lcom/google/firebase/a;

    return-object p0
.end method

.method public zze(Lcom/google/firebase/auth/d;)Lcom/google/android/gms/internal/zzbmd;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/d;",
            ")",
            "Lcom/google/android/gms/internal/zzbmd",
            "<TSuccessT;TCallbackT;>;"
        }
    .end annotation

    const-string v0, "firebaseUser cannot be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/zzac;->zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/firebase/auth/d;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbmd;->zzbYj:Lcom/google/firebase/auth/d;

    return-object p0
.end method
