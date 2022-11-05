.class public Lcom/google/android/gms/internal/zzbls;
.super Lcom/google/android/gms/common/api/zzc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbls$zzj;,
        Lcom/google/android/gms/internal/zzbls$zze;,
        Lcom/google/android/gms/internal/zzbls$zzm;,
        Lcom/google/android/gms/internal/zzbls$zzu;,
        Lcom/google/android/gms/internal/zzbls$zzt;,
        Lcom/google/android/gms/internal/zzbls$zzi;,
        Lcom/google/android/gms/internal/zzbls$zzh;,
        Lcom/google/android/gms/internal/zzbls$zzc;,
        Lcom/google/android/gms/internal/zzbls$zzy;,
        Lcom/google/android/gms/internal/zzbls$zza;,
        Lcom/google/android/gms/internal/zzbls$zzb;,
        Lcom/google/android/gms/internal/zzbls$zzn;,
        Lcom/google/android/gms/internal/zzbls$zzo;,
        Lcom/google/android/gms/internal/zzbls$zzf;,
        Lcom/google/android/gms/internal/zzbls$zzl;,
        Lcom/google/android/gms/internal/zzbls$zzs;,
        Lcom/google/android/gms/internal/zzbls$zzd;,
        Lcom/google/android/gms/internal/zzbls$zzw;,
        Lcom/google/android/gms/internal/zzbls$zzv;,
        Lcom/google/android/gms/internal/zzbls$zzx;,
        Lcom/google/android/gms/internal/zzbls$zzp;,
        Lcom/google/android/gms/internal/zzbls$zzk;,
        Lcom/google/android/gms/internal/zzbls$zzq;,
        Lcom/google/android/gms/internal/zzbls$zzr;,
        Lcom/google/android/gms/internal/zzbls$zzg;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/zzc",
        "<",
        "Lcom/google/android/gms/internal/zzbma$zza;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/zzbma$zza;)V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzbma;->zzbYg:Lcom/google/android/gms/common/api/Api;

    new-instance v1, Lcom/google/firebase/c;

    invoke-direct {v1}, Lcom/google/firebase/c;-><init>()V

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/google/android/gms/common/api/zzc;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/Api;Lcom/google/android/gms/common/api/Api$ApiOptions;Lcom/google/android/gms/internal/zzabs;)V

    return-void
.end method

.method private zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResultT:",
            "Ljava/lang/Object;",
            "CallbackT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/gms/internal/zzbmd",
            "<TResultT;TCallbackT;>;)",
            "Lcom/google/android/gms/internal/zzbls$zzj",
            "<TResultT;TCallbackT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbls$zzj;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/zzbls$zzj;-><init>(Lcom/google/android/gms/internal/zzbmd;)V

    return-object v0
.end method

.method private static zza(Lcom/google/firebase/a;Lcom/google/android/gms/internal/zzbmj;)Lcom/google/android/gms/internal/zzbnf;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/firebase/a;Lcom/google/android/gms/internal/zzbmj;Z)Lcom/google/android/gms/internal/zzbnf;

    move-result-object v0

    return-object v0
.end method

.method private static zza(Lcom/google/firebase/a;Lcom/google/android/gms/internal/zzbmj;Z)Lcom/google/android/gms/internal/zzbnf;
    .locals 5

    invoke-static {p0}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/zzbnd;

    const-string v1, "firebase"

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/zzbnd;-><init>(Lcom/google/android/gms/internal/zzbmj;Ljava/lang/String;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbmj;->zzVZ()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v4, Lcom/google/android/gms/internal/zzbnd;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbmp;

    invoke-direct {v4, v0}, Lcom/google/android/gms/internal/zzbnd;-><init>(Lcom/google/android/gms/internal/zzbmp;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbnf;

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/internal/zzbnf;-><init>(Lcom/google/firebase/a;Ljava/util/List;)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzbnf;->zzaY(Z)Lcom/google/firebase/auth/d;

    return-object v0
.end method

.method private zza(Lcom/google/firebase/a;Lcom/google/firebase/auth/a;Lcom/google/firebase/auth/d;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Lcom/google/firebase/auth/a;",
            "Lcom/google/firebase/auth/d;",
            "Lcom/google/android/gms/internal/zzbmz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/google/firebase/auth/d;->getProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/google/firebase/auth/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x4277

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzblv;->zzce(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/zzbls$zzi;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzbls$zzi;-><init>(Lcom/google/firebase/auth/a;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbls$zzi;->zze(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/zzbmd;->zze(Lcom/google/firebase/auth/d;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/zzbmd;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls;->doWrite(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0
.end method

.method private zza(Lcom/google/firebase/a;Lcom/google/firebase/auth/b;Lcom/google/firebase/auth/d;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Lcom/google/firebase/auth/b;",
            "Lcom/google/firebase/auth/d;",
            "Lcom/google/android/gms/internal/zzbmz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbls$zzh;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzbls$zzh;-><init>(Lcom/google/firebase/auth/b;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbls$zzh;->zze(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/zzbmd;->zze(Lcom/google/firebase/auth/d;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/zzbmd;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls;->doWrite(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private zza(Lcom/google/firebase/a;Lcom/google/firebase/auth/d;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Lcom/google/firebase/auth/d;",
            "Lcom/google/android/gms/internal/zzbmz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbls$zzt;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbls$zzt;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbls$zzt;->zze(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzbmd;->zze(Lcom/google/firebase/auth/d;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/zzbmd;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls;->doWrite(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method private zza(Lcom/google/firebase/a;Ljava/lang/String;Lcom/google/firebase/auth/d;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Ljava/lang/String;",
            "Lcom/google/firebase/auth/d;",
            "Lcom/google/android/gms/internal/zzbmz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbls$zzu;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzbls$zzu;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbls$zzu;->zze(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/zzbmd;->zze(Lcom/google/firebase/auth/d;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/zzbmd;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls;->doWrite(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/firebase/a;Lcom/google/android/gms/internal/zzbmj;)Lcom/google/android/gms/internal/zzbnf;
    .locals 1

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/firebase/a;Lcom/google/android/gms/internal/zzbmj;)Lcom/google/android/gms/internal/zzbnf;

    move-result-object v0

    return-object v0
.end method

.method static synthetic zzb(Lcom/google/firebase/a;Lcom/google/android/gms/internal/zzbmj;Z)Lcom/google/android/gms/internal/zzbnf;
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/firebase/a;Lcom/google/android/gms/internal/zzbmj;Z)Lcom/google/android/gms/internal/zzbnf;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public zza(Lcom/google/firebase/a;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Lcom/google/android/gms/internal/zzbmz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbls$zzp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbls$zzp;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbls$zzp;->zze(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzbmd;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls;->doWrite(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/firebase/a;Lcom/google/firebase/auth/a;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Lcom/google/firebase/auth/a;",
            "Lcom/google/android/gms/internal/zzbmz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbls$zzq;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzbls$zzq;-><init>(Lcom/google/firebase/auth/a;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbls$zzq;->zze(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/zzbmd;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls;->doWrite(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/firebase/a;Lcom/google/firebase/auth/d;Lcom/google/firebase/auth/UserProfileChangeRequest;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Lcom/google/firebase/auth/d;",
            "Lcom/google/firebase/auth/UserProfileChangeRequest;",
            "Lcom/google/android/gms/internal/zzbmz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbls$zzx;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzbls$zzx;-><init>(Lcom/google/firebase/auth/UserProfileChangeRequest;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbls$zzx;->zze(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzbmd;->zze(Lcom/google/firebase/auth/d;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/zzbmd;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls;->doWrite(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/firebase/a;Lcom/google/firebase/auth/d;Lcom/google/firebase/auth/a;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Lcom/google/firebase/auth/d;",
            "Lcom/google/firebase/auth/a;",
            "Lcom/google/android/gms/internal/zzbmz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbls$zzk;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzbls$zzk;-><init>(Lcom/google/firebase/auth/a;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbls$zzk;->zze(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzbmd;->zze(Lcom/google/firebase/auth/d;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/zzbmd;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls;->doWrite(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/firebase/a;Lcom/google/firebase/auth/d;Ljava/lang/String;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Lcom/google/firebase/auth/d;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbmz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Lcom/google/firebase/auth/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbls$zzg;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzbls$zzg;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbls$zzg;->zze(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzbmd;->zze(Lcom/google/firebase/auth/d;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/zzbmd;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls;->doRead(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/firebase/a;Lcom/google/firebase/auth/d;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Lcom/google/firebase/auth/d;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbmz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbls$zzl;

    invoke-direct {v0, p3, p4}, Lcom/google/android/gms/internal/zzbls$zzl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbls$zzl;->zze(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzbmd;->zze(Lcom/google/firebase/auth/d;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/zzbmd;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls;->doWrite(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/firebase/a;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbls$zzf;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzbls$zzf;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbls$zzf;->zze(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls;->doRead(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/firebase/a;Ljava/lang/String;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbmz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbls$zzr;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzbls$zzr;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbls$zzr;->zze(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/zzbmd;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls;->doWrite(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/firebase/a;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbls$zzc;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzbls$zzc;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbls$zzc;->zze(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls;->doWrite(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/firebase/a;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbmz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbls$zzd;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzbls$zzd;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbls$zzd;->zze(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/zzbmd;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls;->doWrite(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zza(Lcom/google/firebase/auth/d;Lcom/google/android/gms/internal/zzbni;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/auth/d;",
            "Lcom/google/android/gms/internal/zzbni;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbls$zze;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbls$zze;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbls$zze;->zze(Lcom/google/firebase/auth/d;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzbmd;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls;->doWrite(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/firebase/a;Lcom/google/firebase/auth/d;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Lcom/google/firebase/auth/d;",
            "Lcom/google/android/gms/internal/zzbmz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbls$zzm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbls$zzm;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbls$zzm;->zze(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzbmd;->zze(Lcom/google/firebase/auth/d;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/google/android/gms/internal/zzbmd;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls;->doRead(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/firebase/a;Lcom/google/firebase/auth/d;Lcom/google/firebase/auth/a;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Lcom/google/firebase/auth/d;",
            "Lcom/google/firebase/auth/a;",
            "Lcom/google/android/gms/internal/zzbmz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    const-class v0, Lcom/google/firebase/auth/b;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p3, Lcom/google/firebase/auth/b;

    invoke-direct {p0, p1, p3, p2, p4}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/firebase/a;Lcom/google/firebase/auth/b;Lcom/google/firebase/auth/d;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0, p1, p3, p2, p4}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/firebase/a;Lcom/google/firebase/auth/a;Lcom/google/firebase/auth/d;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public zzb(Lcom/google/firebase/a;Lcom/google/firebase/auth/d;Ljava/lang/String;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Lcom/google/firebase/auth/d;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbmz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbls$zzv;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzbls$zzv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbls$zzv;->zze(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzbmd;->zze(Lcom/google/firebase/auth/d;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/zzbmd;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls;->doWrite(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/firebase/a;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbls$zzo;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzbls$zzo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbls$zzo;->zze(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls;->doWrite(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zzb(Lcom/google/firebase/a;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbmz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbls$zzs;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzbls$zzs;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbls$zzs;->zze(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/zzbmd;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls;->doWrite(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zzc(Lcom/google/firebase/a;Lcom/google/firebase/auth/d;Ljava/lang/String;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Lcom/google/firebase/auth/d;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbmz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbls$zzw;

    invoke-direct {v0, p3}, Lcom/google/android/gms/internal/zzbls$zzw;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbls$zzw;->zze(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/zzbmd;->zze(Lcom/google/firebase/auth/d;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/google/android/gms/internal/zzbmd;->zzad(Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls;->doWrite(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zzc(Lcom/google/firebase/a;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbls$zzn;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzbls$zzn;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbls$zzn;->zze(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls;->doWrite(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zzd(Lcom/google/firebase/a;Lcom/google/firebase/auth/d;Ljava/lang/String;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Lcom/google/firebase/auth/d;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/zzbmz;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/zzac;->zzdr(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lcom/google/android/gms/common/internal/zzac;->zzw(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/google/firebase/auth/d;->getProviders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p2}, Lcom/google/firebase/auth/d;->isAnonymous()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    const/16 v1, 0x4278

    invoke-direct {v0, v1, p3}, Lcom/google/android/gms/common/api/Status;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/zzblv;->zzce(Lcom/google/android/gms/common/api/Status;)Lcom/google/firebase/FirebaseException;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tasks/Tasks;->forException(Ljava/lang/Exception;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_2
    const/4 v0, -0x1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_1

    invoke-direct {p0, p1, p3, p2, p4}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/firebase/a;Ljava/lang/String;Lcom/google/firebase/auth/d;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0

    :pswitch_0
    const-string v1, "password"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_1
    invoke-direct {p0, p1, p2, p4}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/firebase/a;Lcom/google/firebase/auth/d;Lcom/google/android/gms/internal/zzbmz;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4889ba9b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public zzd(Lcom/google/firebase/a;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbls$zzb;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzbls$zzb;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbls$zzb;->zze(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls;->doWrite(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zze(Lcom/google/firebase/a;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbls$zza;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzbls$zza;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbls$zza;->zze(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls;->doWrite(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method

.method public zzf(Lcom/google/firebase/a;Ljava/lang/String;)Lcom/google/android/gms/tasks/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/a;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/tasks/Task",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbls$zzy;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/zzbls$zzy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbls$zzy;->zze(Lcom/google/firebase/a;)Lcom/google/android/gms/internal/zzbmd;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzbls;->zza(Lcom/google/android/gms/internal/zzbmd;)Lcom/google/android/gms/internal/zzbls$zzj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzbls;->doWrite(Lcom/google/android/gms/internal/zzabv;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    return-object v0
.end method
