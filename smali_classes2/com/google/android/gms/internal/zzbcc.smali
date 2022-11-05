.class public Lcom/google/android/gms/internal/zzbcc;
.super Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final zzbEU:Ljava/lang/String;

.field private final zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

.field private final zzbJu:Lcom/google/android/gms/tagmanager/zzay;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbcc;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/zzbcc;->zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

    iput-object p3, p0, Lcom/google/android/gms/internal/zzbcc;->zzbJu:Lcom/google/android/gms/tagmanager/zzay;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzbcc;->zzbEU:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbio;Lcom/google/android/gms/internal/zzbir;)Lcom/google/android/gms/internal/zzbcb;
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/zzbcb;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzbcc;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/zzbcc;->zzbEU:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/zzbcc;->zzbJl:Lcom/google/android/gms/tagmanager/zzbb;

    iget-object v6, p0, Lcom/google/android/gms/internal/zzbcc;->zzbJu:Lcom/google/android/gms/tagmanager/zzay;

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/zzbcb;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/zzbio;Lcom/google/android/gms/internal/zzbir;Lcom/google/android/gms/tagmanager/zzbb;Lcom/google/android/gms/tagmanager/zzay;)V

    return-object v0
.end method
