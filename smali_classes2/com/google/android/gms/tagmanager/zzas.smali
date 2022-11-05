.class Lcom/google/android/gms/tagmanager/zzas;
.super Ljava/lang/Object;


# instance fields
.field private final zzagi:J

.field private final zzbGm:J

.field private final zzbGn:J

.field private zzbGo:Ljava/lang/String;


# direct methods
.method constructor <init>(JJJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/tagmanager/zzas;->zzbGm:J

    iput-wide p3, p0, Lcom/google/android/gms/tagmanager/zzas;->zzagi:J

    iput-wide p5, p0, Lcom/google/android/gms/tagmanager/zzas;->zzbGn:J

    return-void
.end method


# virtual methods
.method zzQN()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzas;->zzbGm:J

    return-wide v0
.end method

.method zzQO()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/tagmanager/zzas;->zzbGn:J

    return-wide v0
.end method

.method zzQP()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/zzas;->zzbGo:Ljava/lang/String;

    return-object v0
.end method

.method zzhi(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/tagmanager/zzas;->zzbGo:Ljava/lang/String;

    goto :goto_0
.end method
