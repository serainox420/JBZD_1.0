.class Lcom/mdotm/android/http/MdotMNetworkManager$Requests;
.super Ljava/lang/Object;
.source "MdotMNetworkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mdotm/android/http/MdotMNetworkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Requests"
.end annotation


# instance fields
.field adID:Ljava/lang/String;

.field adRequest:Lcom/mdotm/android/model/MdotMAdRequest;

.field gpsLibExists:Z

.field requestID:J

.field final synthetic this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

.field ua:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/mdotm/android/http/MdotMNetworkManager;Ljava/lang/StringBuffer;Lcom/mdotm/android/model/MdotMAdRequest;J)V
    .locals 2

    .prologue
    .line 713
    iput-object p1, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 709
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->gpsLibExists:Z

    .line 710
    invoke-static {}, Lcom/mdotm/android/utils/MdotMUtils;->getUtilsInstance()Lcom/mdotm/android/utils/MdotMUtils;

    move-result-object v0

    .line 711
    invoke-static {p1}, Lcom/mdotm/android/http/MdotMNetworkManager;->access$0(Lcom/mdotm/android/http/MdotMNetworkManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mdotm/android/utils/MdotMUtils;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->ua:Ljava/lang/String;

    .line 715
    iput-object p3, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->adRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    .line 716
    iput-wide p4, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->requestID:J

    .line 718
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 721
    new-instance v0, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;

    iget-object v1, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    invoke-static {v1}, Lcom/mdotm/android/http/MdotMNetworkManager;->access$0(Lcom/mdotm/android/http/MdotMNetworkManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->ua:Ljava/lang/String;

    invoke-direct {v0, v1, v5}, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 722
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    iget-object v5, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    invoke-static {v5}, Lcom/mdotm/android/http/MdotMNetworkManager;->access$1(Lcom/mdotm/android/http/MdotMNetworkManager;)Lcom/mdotm/android/model/MdotMAdRequest;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/mdotm/android/utils/MdotMJsonRequsetBuilder;->buildRequest(Lcom/mdotm/android/model/MdotMAdRequest;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mdotm/android/http/MdotMNetworkManager;->access$2(Lcom/mdotm/android/http/MdotMNetworkManager;Ljava/lang/StringBuffer;)V

    .line 723
    const/16 v1, 0x7530

    .line 724
    const/16 v5, 0x2710

    .line 728
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMNetworkManager;->access$3(Lcom/mdotm/android/http/MdotMNetworkManager;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Json requested is :"

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 733
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const-string v7, "https://secure.mdotm.com/ads/feed.php"

    invoke-direct {v0, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 739
    :goto_0
    :try_start_1
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 744
    :goto_1
    invoke-virtual {v0, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 745
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 746
    const-string v1, "Content-Type"

    const-string v5, "application/json"

    invoke-virtual {v0, v1, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    const-string v1, "Accept"

    const-string v5, "application/json"

    invoke-virtual {v0, v1, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :try_start_2
    const-string v1, "POST"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/ProtocolException; {:try_start_2 .. :try_end_2} :catch_2

    .line 758
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    .line 759
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v7, Ljava/io/OutputStreamWriter;

    const-string v8, "UTF-8"

    invoke-direct {v7, v1, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v5, v7}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 761
    invoke-virtual {v5, v6}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 762
    invoke-virtual {v5}, Ljava/io/BufferedWriter;->close()V

    .line 763
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 773
    :goto_3
    :try_start_4
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v5

    .line 774
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "json status code is"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    .line 779
    :goto_4
    const/16 v1, 0xc8

    if-eq v5, v1, :cond_0

    .line 780
    const/16 v1, 0xc9

    if-ne v5, v1, :cond_d

    .line 783
    :cond_0
    :try_start_6
    new-instance v1, Ljava/io/BufferedInputStream;

    .line 784
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 783
    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    move-object v0, v1

    .line 789
    :goto_5
    new-instance v5, Ljava/io/BufferedReader;

    .line 790
    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 789
    invoke-direct {v5, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 791
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 796
    :goto_6
    :try_start_7
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    move-result-object v1

    if-nez v1, :cond_5

    .line 806
    :goto_7
    :try_start_8
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 812
    :goto_8
    :try_start_9
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 817
    :goto_9
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "response is = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 821
    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_c

    .line 824
    const-string v0, "<VAST"

    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 827
    new-instance v0, Lcom/mdotm/android/vast/VastXmlParser;

    invoke-direct {v0}, Lcom/mdotm/android/vast/VastXmlParser;-><init>()V

    .line 828
    invoke-virtual {v0, v6}, Lcom/mdotm/android/vast/VastXmlParser;->parseResponse(Ljava/lang/String;)Lcom/mdotm/android/vast/VastAd;

    move-result-object v1

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "after parse"

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mdotm/android/vast/VastAd;->getStatus()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 830
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/mdotm/android/vast/VastAd;->getStatus()I

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    :goto_a
    invoke-virtual {v1}, Lcom/mdotm/android/vast/VastAd;->getVastAds()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_7

    move v5, v3

    :goto_b
    and-int/2addr v0, v5

    if-eqz v0, :cond_3

    .line 832
    const-string v0, "after parse check if vast"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 834
    invoke-virtual {v1}, Lcom/mdotm/android/vast/VastAd;->getVastAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/vast/BaseVastAd;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/BaseVastAd;->getAdType()I

    move-result v0

    const/4 v5, 0x3

    if-ne v0, v5, :cond_8

    .line 837
    const-string v0, "inside parsing companion ad"

    .line 836
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 838
    new-instance v5, Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-direct {v5}, Lcom/mdotm/android/model/MdotMAdResponse;-><init>()V

    .line 839
    invoke-virtual {v5, v3}, Lcom/mdotm/android/model/MdotMAdResponse;->setStatus(I)V

    .line 841
    sget v0, Lcom/mdotm/android/http/MdotMNetworkManager;->htmlResource:I

    invoke-virtual {v5, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setResourceType(I)V

    .line 842
    invoke-virtual {v5, v6}, Lcom/mdotm/android/model/MdotMAdResponse;->setImageUrl(Ljava/lang/String;)V

    .line 844
    sget v0, Lcom/mdotm/android/utils/MdotMUtils;->AD_WITH_BANNER_OR_XHTML_OR_VIDEO:I

    invoke-virtual {v5, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setAdType(I)V

    .line 846
    invoke-virtual {v1}, Lcom/mdotm/android/vast/VastAd;->getVastAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/vast/Companion;

    .line 847
    invoke-virtual {v0}, Lcom/mdotm/android/vast/Companion;->getHTMLResource()Ljava/lang/String;

    move-result-object v0

    .line 845
    invoke-virtual {v5, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setImageUrl(Ljava/lang/String;)V

    .line 849
    invoke-virtual {v1}, Lcom/mdotm/android/vast/VastAd;->getVastAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/vast/Companion;

    .line 848
    invoke-virtual {v5, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setCompanion(Lcom/mdotm/android/vast/Companion;)V

    .line 851
    invoke-virtual {v1}, Lcom/mdotm/android/vast/VastAd;->getImpression()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setImpression(Ljava/util/ArrayList;)V

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "vastAd.getImpression()"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 853
    invoke-virtual {v1}, Lcom/mdotm/android/vast/VastAd;->getImpression()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 852
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 854
    if-eqz v5, :cond_1

    .line 855
    invoke-virtual {v5}, Lcom/mdotm/android/model/MdotMAdResponse;->getStatus()I

    move-result v0

    if-eqz v0, :cond_1

    .line 863
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->adRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdRequest;->getAdSize()Ljava/lang/String;

    move-result-object v0

    .line 864
    if-eqz v0, :cond_1

    .line 865
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 868
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Ad width and height "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 870
    aget-object v7, v0, v4

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 869
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 871
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 873
    aget-object v7, v0, v3

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 872
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 868
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 867
    invoke-static {p0, v6}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 875
    aget-object v4, v0, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 874
    invoke-virtual {v5, v4}, Lcom/mdotm/android/model/MdotMAdResponse;->setWidth(I)V

    .line 877
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 876
    invoke-virtual {v5, v0}, Lcom/mdotm/android/model/MdotMAdResponse;->setHeight(I)V

    .line 881
    :cond_1
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    invoke-static {v0, v3}, Lcom/mdotm/android/http/MdotMNetworkManager;->access$4(Lcom/mdotm/android/http/MdotMNetworkManager;Z)V

    .line 882
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    iget-object v0, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->networkListener:Lcom/mdotm/android/listener/MdotMNetworkListener;

    invoke-interface {v0, v5}, Lcom/mdotm/android/listener/MdotMNetworkListener;->finishedAdParsing(Lcom/mdotm/android/model/MdotMAdResponse;)V

    .line 902
    :cond_2
    :goto_c
    new-instance v0, Lcom/mdotm/android/http/MdotMAdContentDownloader;

    invoke-direct {v0}, Lcom/mdotm/android/http/MdotMAdContentDownloader;-><init>()V

    .line 903
    invoke-static {}, Lcom/mdotm/android/http/MdotMNetworkManager;->access$5()I

    move-result v3

    iget-object v4, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    invoke-static {v4}, Lcom/mdotm/android/http/MdotMNetworkManager;->access$0(Lcom/mdotm/android/http/MdotMNetworkManager;)Landroid/content/Context;

    move-result-object v4

    .line 904
    iget-object v5, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->adRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    invoke-virtual {v5}, Lcom/mdotm/android/model/MdotMAdRequest;->isEnableCaching()Z

    move-result v5

    .line 902
    invoke-virtual/range {v0 .. v5}, Lcom/mdotm/android/http/MdotMAdContentDownloader;->downloadResources(Lcom/mdotm/android/vast/VastAd;Lcom/mdotm/android/model/MdotMAdResponse;ILandroid/content/Context;Z)V

    .line 907
    :cond_3
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMNetworkManager;->access$6(Lcom/mdotm/android/http/MdotMNetworkManager;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 908
    const-string v0, "Ad is not companion"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 909
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    iget-object v0, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->networkListener:Lcom/mdotm/android/listener/MdotMNetworkListener;

    invoke-interface {v0, v1}, Lcom/mdotm/android/listener/MdotMNetworkListener;->finishedVastParsing(Lcom/mdotm/android/vast/VastAd;)V

    .line 950
    :cond_4
    :goto_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "class = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    iget-object v1, v1, Lcom/mdotm/android/http/MdotMNetworkManager;->networkListener:Lcom/mdotm/android/listener/MdotMNetworkListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 951
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 952
    iget-wide v2, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->requestID:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 953
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    invoke-static {v1}, Lcom/mdotm/android/http/MdotMNetworkManager;->access$7(Lcom/mdotm/android/http/MdotMNetworkManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 954
    return-void

    .line 734
    :catch_0
    move-exception v0

    .line 736
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    move-object v0, v2

    goto/16 :goto_0

    .line 740
    :catch_1
    move-exception v0

    .line 742
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v2

    goto/16 :goto_1

    .line 750
    :catch_2
    move-exception v1

    .line 752
    invoke-virtual {v1}, Ljava/net/ProtocolException;->printStackTrace()V

    goto/16 :goto_2

    .line 764
    :catch_3
    move-exception v1

    .line 766
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_3

    .line 775
    :catch_4
    move-exception v1

    move v5, v4

    .line 777
    :goto_e
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 785
    :catch_5
    move-exception v0

    .line 787
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v2

    goto/16 :goto_5

    .line 798
    :cond_5
    :try_start_a
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "response is = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_6

    .line 801
    :catch_6
    move-exception v1

    .line 803
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 807
    :catch_7
    move-exception v1

    .line 809
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 813
    :catch_8
    move-exception v0

    .line 815
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_9

    :cond_6
    move v0, v4

    .line 830
    goto/16 :goto_a

    :cond_7
    move v5, v4

    goto/16 :goto_b

    .line 885
    :cond_8
    invoke-virtual {v1}, Lcom/mdotm/android/vast/VastAd;->getVastAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/vast/BaseVastAd;

    invoke-virtual {v0}, Lcom/mdotm/android/vast/BaseVastAd;->getAdType()I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_2

    .line 886
    const-string v0, "Ad is native"

    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 887
    new-instance v3, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;

    invoke-direct {v3}, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;-><init>()V

    .line 889
    :goto_f
    :try_start_b
    invoke-virtual {v1}, Lcom/mdotm/android/vast/VastAd;->getVastAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    move-result v0

    if-lt v4, v0, :cond_9

    .line 898
    :goto_10
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    iget-object v0, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->networkListener:Lcom/mdotm/android/listener/MdotMNetworkListener;

    invoke-interface {v0, v1}, Lcom/mdotm/android/listener/MdotMNetworkListener;->finishedNativeParsing(Lcom/mdotm/android/vast/VastAd;)V

    goto/16 :goto_c

    .line 890
    :cond_9
    :try_start_c
    invoke-virtual {v1}, Lcom/mdotm/android/vast/VastAd;->getVastAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/nativeads/MdotMNativeAd;

    invoke-virtual {v0}, Lcom/mdotm/android/nativeads/MdotMNativeAd;->getCoverImage()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mdotm/android/http/MdotMNetworkManager;->access$5()I

    move-result v5

    iget-object v6, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    invoke-static {v6}, Lcom/mdotm/android/http/MdotMNetworkManager;->access$0(Lcom/mdotm/android/http/MdotMNetworkManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v0, v5, v6}, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;->downloadNativeResources(Ljava/lang/String;ILandroid/content/Context;)V

    .line 891
    invoke-virtual {v1}, Lcom/mdotm/android/vast/VastAd;->getVastAds()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mdotm/android/nativeads/MdotMNativeAd;

    invoke-virtual {v0}, Lcom/mdotm/android/nativeads/MdotMNativeAd;->getIcon()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/mdotm/android/http/MdotMNetworkManager;->access$5()I

    move-result v5

    iget-object v6, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    invoke-static {v6}, Lcom/mdotm/android/http/MdotMNetworkManager;->access$0(Lcom/mdotm/android/http/MdotMNetworkManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v0, v5, v6}, Lcom/mdotm/android/http/MdotMNatiiveContentDownloader;->downloadNativeResources(Ljava/lang/String;ILandroid/content/Context;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    .line 889
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 894
    :catch_9
    move-exception v0

    .line 896
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    .line 913
    :cond_a
    new-instance v0, Lcom/mdotm/android/model/MdotMAdResponse;

    invoke-direct {v0}, Lcom/mdotm/android/model/MdotMAdResponse;-><init>()V

    .line 914
    invoke-virtual {v0, v3}, Lcom/mdotm/android/model/MdotMAdResponse;->setStatus(I)V

    .line 916
    sget v1, Lcom/mdotm/android/http/MdotMNetworkManager;->htmlResource:I

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setResourceType(I)V

    .line 917
    invoke-virtual {v0, v6}, Lcom/mdotm/android/model/MdotMAdResponse;->setImageUrl(Ljava/lang/String;)V

    .line 919
    sget v1, Lcom/mdotm/android/utils/MdotMUtils;->AD_WITH_BANNER_OR_XHTML_OR_VIDEO:I

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setAdType(I)V

    .line 920
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/mdotm/android/model/MdotMAdResponse;->getStatus()I

    move-result v1

    if-eqz v1, :cond_b

    .line 929
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->adRequest:Lcom/mdotm/android/model/MdotMAdRequest;

    invoke-virtual {v1}, Lcom/mdotm/android/model/MdotMAdRequest;->getAdSize()Ljava/lang/String;

    move-result-object v1

    .line 930
    if-eqz v1, :cond_b

    .line 931
    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 932
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "Ad width and height "

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 933
    aget-object v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 934
    aget-object v5, v1, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 932
    invoke-static {p0, v2}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 935
    aget-object v2, v1, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/mdotm/android/model/MdotMAdResponse;->setWidth(I)V

    .line 937
    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mdotm/android/model/MdotMAdResponse;->setHeight(I)V

    .line 941
    :cond_b
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    iget-object v1, v1, Lcom/mdotm/android/http/MdotMNetworkManager;->networkListener:Lcom/mdotm/android/listener/MdotMNetworkListener;

    invoke-interface {v1, v0}, Lcom/mdotm/android/listener/MdotMNetworkListener;->finishedAdParsing(Lcom/mdotm/android/model/MdotMAdResponse;)V

    goto/16 :goto_d

    .line 944
    :cond_c
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    iget-object v0, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->networkListener:Lcom/mdotm/android/listener/MdotMNetworkListener;

    invoke-interface {v0, v2}, Lcom/mdotm/android/listener/MdotMNetworkListener;->finishedAdParsing(Lcom/mdotm/android/model/MdotMAdResponse;)V

    goto/16 :goto_d

    .line 947
    :cond_d
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMNetworkManager$Requests;->this$0:Lcom/mdotm/android/http/MdotMNetworkManager;

    iget-object v0, v0, Lcom/mdotm/android/http/MdotMNetworkManager;->networkListener:Lcom/mdotm/android/listener/MdotMNetworkListener;

    invoke-interface {v0, v2}, Lcom/mdotm/android/listener/MdotMNetworkListener;->finishedAdParsing(Lcom/mdotm/android/model/MdotMAdResponse;)V

    goto/16 :goto_d

    .line 775
    :catch_a
    move-exception v1

    goto/16 :goto_e
.end method
