.class final Lcom/google/android/gms/internal/zzbvb;
.super Lcom/google/android/gms/internal/zzbvc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzbvb$zza;
    }
.end annotation

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
.field private final zzcpA:Lcom/google/android/gms/internal/zzbup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbup",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final zzcpB:Lcom/google/android/gms/internal/zzbuk;

.field private final zzcpC:Lcom/google/android/gms/internal/zzbwg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbwg",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final zzcpD:Lcom/google/android/gms/internal/zzbvd;

.field private zzcpk:Lcom/google/android/gms/internal/zzbvc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbvc",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final zzcpz:Lcom/google/android/gms/internal/zzbuy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/zzbuy",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/zzbuy;Lcom/google/android/gms/internal/zzbup;Lcom/google/android/gms/internal/zzbuk;Lcom/google/android/gms/internal/zzbwg;Lcom/google/android/gms/internal/zzbvd;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbuy",
            "<TT;>;",
            "Lcom/google/android/gms/internal/zzbup",
            "<TT;>;",
            "Lcom/google/android/gms/internal/zzbuk;",
            "Lcom/google/android/gms/internal/zzbwg",
            "<TT;>;",
            "Lcom/google/android/gms/internal/zzbvd;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbvc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbvb;->zzcpz:Lcom/google/android/gms/internal/zzbuy;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbvb;->zzcpA:Lcom/google/android/gms/internal/zzbup;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbvb;->zzcpB:Lcom/google/android/gms/internal/zzbuk;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbvb;->zzcpC:Lcom/google/android/gms/internal/zzbwg;

    iput-object p5, p0, Lcom/google/android/gms/internal/zzbvb;->zzcpD:Lcom/google/android/gms/internal/zzbvd;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbuy;Lcom/google/android/gms/internal/zzbup;Lcom/google/android/gms/internal/zzbuk;Lcom/google/android/gms/internal/zzbwg;Lcom/google/android/gms/internal/zzbvd;Lcom/google/android/gms/internal/zzbvb$1;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/google/android/gms/internal/zzbvb;-><init>(Lcom/google/android/gms/internal/zzbuy;Lcom/google/android/gms/internal/zzbup;Lcom/google/android/gms/internal/zzbuk;Lcom/google/android/gms/internal/zzbwg;Lcom/google/android/gms/internal/zzbvd;)V

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/zzbwg;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbvd;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbwg",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/zzbvd;"
        }
    .end annotation

    const/4 v4, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzbvb$zza;

    const/4 v3, 0x0

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbvb$zza;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbwg;ZLjava/lang/Class;Lcom/google/android/gms/internal/zzbvb$1;)V

    return-object v0
.end method

.method private zzadv()Lcom/google/android/gms/internal/zzbvc;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/zzbvc",
            "<TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvb;->zzcpk:Lcom/google/android/gms/internal/zzbvc;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvb;->zzcpB:Lcom/google/android/gms/internal/zzbuk;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbvb;->zzcpD:Lcom/google/android/gms/internal/zzbvd;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbvb;->zzcpC:Lcom/google/android/gms/internal/zzbwg;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbuk;->zza(Lcom/google/android/gms/internal/zzbvd;Lcom/google/android/gms/internal/zzbwg;)Lcom/google/android/gms/internal/zzbvc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbvb;->zzcpk:Lcom/google/android/gms/internal/zzbvc;

    goto :goto_0
.end method

.method public static zzb(Lcom/google/android/gms/internal/zzbwg;Ljava/lang/Object;)Lcom/google/android/gms/internal/zzbvd;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbwg",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/zzbvd;"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbwg;->zzadR()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzbwg;->zzadQ()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    new-instance v0, Lcom/google/android/gms/internal/zzbvb$zza;

    move-object v1, p1

    move-object v2, p0

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbvb$zza;-><init>(Ljava/lang/Object;Lcom/google/android/gms/internal/zzbwg;ZLjava/lang/Class;Lcom/google/android/gms/internal/zzbvb$1;)V

    return-object v0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvb;->zzcpz:Lcom/google/android/gms/internal/zzbuy;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbvb;->zzadv()Lcom/google/android/gms/internal/zzbvc;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbvc;->zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadP()Lcom/google/android/gms/internal/zzbwj;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvb;->zzcpz:Lcom/google/android/gms/internal/zzbuy;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbvb;->zzcpC:Lcom/google/android/gms/internal/zzbwg;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbwg;->zzadR()Ljava/lang/reflect/Type;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbvb;->zzcpB:Lcom/google/android/gms/internal/zzbuk;

    iget-object v2, v2, Lcom/google/android/gms/internal/zzbuk;->zzcpi:Lcom/google/android/gms/internal/zzbux;

    invoke-interface {v0, p2, v1, v2}, Lcom/google/android/gms/internal/zzbuy;->zza(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzbux;)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/zzbvr;->zzb(Lcom/google/android/gms/internal/zzbuq;Lcom/google/android/gms/internal/zzbwj;)V

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;
    .locals 4
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

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbvb;->zzcpA:Lcom/google/android/gms/internal/zzbup;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbvb;->zzadv()Lcom/google/android/gms/internal/zzbvc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbvc;->zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/zzbvr;->zzh(Lcom/google/android/gms/internal/zzbwh;)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbuq;->zzadn()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/zzbvb;->zzcpA:Lcom/google/android/gms/internal/zzbup;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbvb;->zzcpC:Lcom/google/android/gms/internal/zzbwg;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/zzbwg;->zzadR()Ljava/lang/reflect/Type;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/zzbvb;->zzcpB:Lcom/google/android/gms/internal/zzbuk;

    iget-object v3, v3, Lcom/google/android/gms/internal/zzbuk;->zzcph:Lcom/google/android/gms/internal/zzbuo;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/android/gms/internal/zzbup;->zzb(Lcom/google/android/gms/internal/zzbuq;Ljava/lang/reflect/Type;Lcom/google/android/gms/internal/zzbuo;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/google/android/gms/internal/zzbuu; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/google/android/gms/internal/zzbuu;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/zzbuu;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
