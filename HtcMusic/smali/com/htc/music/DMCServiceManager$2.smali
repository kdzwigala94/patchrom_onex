.class Lcom/htc/music/DMCServiceManager$2;
.super Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;
.source "DMCServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/music/DMCServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/music/DMCServiceManager;


# direct methods
.method constructor <init>(Lcom/htc/music/DMCServiceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 786
    iput-object p1, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    invoke-direct {p0}, Lcom/htc/dlnainterface/IDLNAPluginNotify$Stub;-><init>()V

    return-void
.end method

.method private checkAndUpdateAlbumArt(JLjava/lang/String;)V
    .locals 1
    .parameter "newIndex"
    .parameter "newPath"

    .prologue
    .line 1069
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    if-eq v0, p3, :cond_0

    .line 1070
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v0

    iput-object p3, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    .line 1071
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager$2;->sendRefresh(I)V

    .line 1073
    :cond_0
    return-void
.end method

.method private sendErr(ILjava/lang/String;I)V
    .locals 5
    .parameter "nToastee"
    .parameter "szArg"
    .parameter "nArg"

    .prologue
    .line 1145
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1146
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1147
    .local v0, bd:Landroid/os/Bundle;
    const-string v2, "arg0"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1149
    iput p3, v1, Landroid/os/Message;->arg1:I

    .line 1151
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1152
    return-void
.end method

.method private sendRefresh(I)V
    .locals 4
    .parameter "nRefreshee"

    .prologue
    .line 1130
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1132
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1133
    return-void
.end method

.method private sendRefresh(ILjava/lang/String;)V
    .locals 5
    .parameter "nRefreshee"
    .parameter "szArg"

    .prologue
    .line 1136
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1137
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1138
    .local v0, bd:Landroid/os/Bundle;
    const-string v2, "arg0"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1141
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1142
    return-void
.end method


# virtual methods
.method public albumArtDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 791
    return-void
.end method

.method public contentAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "containerID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 796
    return-void
.end method

.method public contentAddedNotify(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 2
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "lastIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1173
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1174
    const-string v0, "[DMCServiceManager]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1183
    :cond_0
    return-void
.end method

.method public contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "containerID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 801
    return-void
.end method

.method public contentBrowsingDoneNotify(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .locals 2
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "lastIndex"
    .parameter "isComplete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1190
    const-string v0, "[DMCServiceManager]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1200
    :cond_0
    return-void
.end method

.method public contentBrowsingErrorNotify(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "containerID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 807
    return-void
.end method

.method public contentBrowsingErrorNotify(Ljava/lang/String;Ljava/lang/String;JILjava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "containerID"
    .parameter "startIndex"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1206
    return-void
.end method

.method public contentThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "uniqueID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 815
    return-void
.end method

.method public contentThumbnailUpdateNotify2(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "serverID"
    .parameter "uniqueID"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 820
    return-void
.end method

.method public contentUpdatedNotify(Ljava/lang/String;)V
    .locals 0
    .parameter "containerID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 825
    return-void
.end method

.method public contentUpdatedNotify(Ljava/lang/String;J)V
    .locals 0
    .parameter "containerID"
    .parameter "startIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1211
    return-void
.end method

.method public controllerErrorNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "rendererID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 830
    const-string v0, "[DMCServiceManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MLCallback:!!controllerError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    const-string v0, "[DMCServiceManager]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    :goto_0
    return-void

    .line 837
    :cond_0
    const/16 v0, 0x64

    invoke-direct {p0, v0, p3, p2}, Lcom/htc/music/DMCServiceManager$2;->sendErr(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public controllerResponseNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "rendererID"
    .parameter "resID"
    .parameter "resReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 843
    const-string v0, "[DMCServiceManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MLCallback:controllerResponse "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    const-string v0, "[DMCServiceManager]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    :cond_0
    return-void
.end method

.method public getContentItemDetailsNotify(Ljava/lang/String;Ljava/lang/String;Lcom/htc/dlnainterface/DLNAContentItemDetails;)V
    .locals 4
    .parameter "serverID"
    .parameter "contentID"
    .parameter "details"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1156
    const-string v1, "[DMCServiceManager]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContentItemDetailsNotify of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mIsRequestDetails:Z
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$2400(Lcom/htc/music/DMCServiceManager;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1159
    :cond_0
    const-string v1, "[DMCServiceManager]"

    const-string v2, "MLCallback:already unreg, or this callback is not called by DMC, return"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    :goto_0
    return-void

    .line 1162
    :cond_1
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    const/4 v2, 0x0

    #setter for: Lcom/htc/music/DMCServiceManager;->mIsRequestDetails:Z
    invoke-static {v1, v2}, Lcom/htc/music/DMCServiceManager;->access$2402(Lcom/htc/music/DMCServiceManager;Z)Z

    .line 1164
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #setter for: Lcom/htc/music/DMCServiceManager;->mCurItemDetails:Lcom/htc/dlnainterface/DLNAContentItemDetails;
    invoke-static {v1, p3}, Lcom/htc/music/DMCServiceManager;->access$2502(Lcom/htc/music/DMCServiceManager;Lcom/htc/dlnainterface/DLNAContentItemDetails;)Lcom/htc/dlnainterface/DLNAContentItemDetails;

    .line 1165
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6b

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1167
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$1700(Lcom/htc/music/DMCServiceManager;)Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v2, 0xa

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public imageDownloadedNotify(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "serverID"
    .parameter "contentID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 855
    return-void
.end method

.method public mirrorRendererAddedNotify(Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 0
    .parameter "rendererData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1232
    return-void
.end method

.method public playlistCreatedResultNotify(Ljava/lang/String;JJ)V
    .locals 3
    .parameter "rendererID"
    .parameter "totalCount"
    .parameter "currentIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 860
    const-string v0, "[DMCServiceManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MLCallback: playlist created res - Item count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    const-string v0, "[DMCServiceManager]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    :goto_0
    return-void

    .line 869
    :cond_0
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v0

    iput-wide p2, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->lCount:J

    .line 870
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v0

    iput-wide p4, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->lCurrentIndex:J

    .line 889
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager$2;->sendRefresh(I)V

    goto :goto_0
.end method

.method public rendererAddedNotify(Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 5
    .parameter "rendererData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 911
    iget-object v1, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    .line 912
    .local v1, uniqueID:Ljava/lang/String;
    iget-object v0, p1, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    .line 914
    .local v0, rendererName:Ljava/lang/String;
    const-string v2, "[DMCServiceManager]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DMR Added:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 915
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 916
    const-string v2, "[DMCServiceManager]"

    const-string v3, "MLCallback:already unreg, return"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$600(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 920
    const-string v2, "[DMCServiceManager]"

    const-string v3, "Selected DMR added"

    invoke-static {v2, v3}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    const/16 v2, 0x8

    invoke-direct {p0, v2, v0}, Lcom/htc/music/DMCServiceManager$2;->sendRefresh(ILjava/lang/String;)V

    .line 923
    const/16 v2, 0x9

    invoke-direct {p0, v2}, Lcom/htc/music/DMCServiceManager$2;->sendRefresh(I)V

    goto :goto_0
.end method

.method public rendererAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "rendererName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 906
    return-void
.end method

.method public rendererListUpdateNotify([Lcom/htc/dlnainterface/DLNARendererData;)V
    .locals 3
    .parameter "rendererList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 932
    const-string v1, "[DMCServiceManager]"

    const-string v2, "MLCallback: DMR List update"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    iget-object v1, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v1}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 934
    const-string v1, "[DMCServiceManager]"

    const-string v2, "MLCallback:already unreg, return"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 938
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/htc/dlnainterface/DLNARendererData;->rendererID:Ljava/lang/String;

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$600(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 939
    const-string v1, "[DMCServiceManager]"

    const-string v2, "Selected DMR existed"

    invoke-static {v1, v2}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    const/16 v1, 0x8

    aget-object v2, p1, v0

    iget-object v2, v2, Lcom/htc/dlnainterface/DLNARendererData;->rendererName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/htc/music/DMCServiceManager$2;->sendRefresh(ILjava/lang/String;)V

    goto :goto_0

    .line 937
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public rendererRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 950
    const-string v0, "[DMCServiceManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMR Removed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 952
    const-string v0, "[DMCServiceManager]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 959
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurDMRID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$600(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    const-string v0, "[DMCServiceManager]"

    const-string v1, "Selected DMR Removed"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    const/16 v0, 0x67

    invoke-direct {p0, v0, p3, p2}, Lcom/htc/music/DMCServiceManager$2;->sendErr(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public rendererThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 964
    return-void
.end method

.method public rendererThumbnailUpdateNotify2(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 969
    return-void
.end method

.method public serverAddedNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "uniqueID"
    .parameter "serverName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 974
    const-string v0, "[DMCServiceManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMS Added:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 975
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 976
    const-string v0, "[DMCServiceManager]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 979
    :cond_1
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurSource:I
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$400(Lcom/htc/music/DMCServiceManager;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2200(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 983
    const-string v0, "[DMCServiceManager]"

    const-string v1, "Current DMS added"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 984
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager$2;->sendRefresh(I)V

    goto :goto_0
.end method

.method public serverListUpdateNotify([Lcom/htc/dlnainterface/DLNAServerData;)V
    .locals 0
    .parameter "serverList"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 992
    return-void
.end method

.method public serverRemovedNotify(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3
    .parameter "uniqueID"
    .parameter "errorID"
    .parameter "errorReason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 997
    const-string v0, "[DMCServiceManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DMS Removed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 999
    const-string v0, "[DMCServiceManager]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    :cond_0
    :goto_0
    return-void

    .line 1002
    :cond_1
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurSource:I
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$400(Lcom/htc/music/DMCServiceManager;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurServerID:Ljava/lang/String;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2200(Lcom/htc/music/DMCServiceManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1006
    const-string v0, "[DMCServiceManager]"

    const-string v1, "Current DMS Removed"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const/16 v0, 0x6a

    invoke-direct {p0, v0, p3, p2}, Lcom/htc/music/DMCServiceManager$2;->sendErr(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public serverThumbnailUpdateNotify(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1015
    return-void
.end method

.method public serverThumbnailUpdateNotify2(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "uniqueID"
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1020
    return-void
.end method

.method public updateControlItemInfo(Lcom/htc/dlnainterface/DLNAControlItemData;)V
    .locals 6
    .parameter "itemData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 1025
    const-string v0, "[DMCServiceManager]"

    const-string v1, "updateControllerItemInfo"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1027
    const-string v0, "[DMCServiceManager]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    :cond_0
    :goto_0
    return-void

    .line 1030
    :cond_1
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentTitle:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szTitle:Ljava/lang/String;

    .line 1031
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentArtist:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szArtist:Ljava/lang/String;

    .line 1032
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentAlbum:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szAlbum:Ljava/lang/String;

    .line 1033
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v0

    iget-object v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->contentDate:Ljava/lang/String;

    iput-object v1, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szDate:Ljava/lang/String;

    .line 1036
    iget-object v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1037
    :cond_2
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    iget-object v2, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/music/DMCServiceManager$2;->checkAndUpdateAlbumArt(JLjava/lang/String;)V

    .line 1041
    :goto_1
    const-string v0, "[DMCServiceManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path ori:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->thumbnailPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    const-string v0, "[DMCServiceManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "path dl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1044
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    iget-object v2, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v2}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v2

    iget-wide v2, v2, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->lCurrentIndex:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 1045
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iput-wide v4, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->lPosition:J

    .line 1046
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iput-wide v4, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->lPositionDyn:J

    .line 1049
    :cond_3
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v0

    iget-wide v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    iput-wide v1, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->lCurrentIndex:J

    .line 1051
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iget-wide v1, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->fDuration:J

    iput-wide v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->lDuration:J

    .line 1059
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->saveInfo()V

    .line 1061
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager$2;->sendRefresh(I)V

    .line 1062
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager$2;->sendRefresh(I)V

    .line 1064
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCurMode:I
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$100(Lcom/htc/music/DMCServiceManager;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1065
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager$2;->sendRefresh(I)V

    goto/16 :goto_0

    .line 1039
    :cond_4
    iget-wide v0, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->currentIndex:J

    iget-object v2, p1, Lcom/htc/dlnainterface/DLNAControlItemData;->downloadStoreAlbumArtPath:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/htc/music/DMCServiceManager$2;->checkAndUpdateAlbumArt(JLjava/lang/String;)V

    goto/16 :goto_1
.end method

.method public updateControlItemThumbnail(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "thumbnailPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1078
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1079
    const-string v0, "[DMCServiceManager]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    :goto_0
    return-void

    .line 1082
    :cond_0
    const-string v0, "[DMCServiceManager]"

    const-string v1, "updateControllerItemThumbnail"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v0

    iput-object p4, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    .line 1085
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager$2;->sendRefresh(I)V

    goto :goto_0
.end method

.method public updateControllerStatus(Lcom/htc/dlnainterface/DLNAControllerStatus;)V
    .locals 3
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1091
    const-string v0, "[DMCServiceManager]"

    const-string v1, "updateControllerStatus"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1094
    const-string v0, "[DMCServiceManager]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1127
    :goto_0
    return-void

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iget v0, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    if-eq v0, v1, :cond_1

    .line 1099
    const-string v0, "[DMCServiceManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***** updStatus - Playstate Changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->playState:I

    iput v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nPlayState:I

    .line 1102
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager$2;->sendRefresh(I)V

    .line 1109
    :cond_1
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iget v0, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nRepeatState:I

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    if-eq v0, v1, :cond_2

    .line 1110
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager$2;->sendRefresh(I)V

    .line 1111
    :cond_2
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iget-boolean v0, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->bShuffleState:Z

    iget-boolean v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    if-eq v0, v1, :cond_3

    .line 1112
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager$2;->sendRefresh(I)V

    .line 1114
    :cond_3
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iget v0, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    if-eq v0, v1, :cond_4

    .line 1115
    const-string v0, "[DMCServiceManager]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updStatus - Vol Changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->volumeValue:I

    iput v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nVolume:I

    .line 1117
    const/4 v0, 0x7

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager$2;->sendRefresh(I)V

    .line 1120
    :cond_4
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iget-wide v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->position:J

    iput-wide v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->lPositionDyn:J

    .line 1121
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iget-boolean v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->bMute:Z

    iput-boolean v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->bMuteState:Z

    .line 1122
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iget-boolean v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->bShuffle:Z

    iput-boolean v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->bShuffleState:Z

    .line 1123
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCStatus:Lcom/htc/music/DMCServiceManager$DMCStatus;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2300(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCStatus;

    move-result-object v0

    iget v1, p1, Lcom/htc/dlnainterface/DLNAControllerStatus;->repeatState:I

    iput v1, v0, Lcom/htc/music/DMCServiceManager$DMCStatus;->nRepeatState:I

    goto/16 :goto_0
.end method

.method public updateDownloadStoreAlbumArtNotify(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2
    .parameter "rendererID"
    .parameter "currentIndex"
    .parameter "albumArtPath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1216
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mCallbackUnregistered:Z
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2000(Lcom/htc/music/DMCServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1217
    const-string v0, "[DMCServiceManager]"

    const-string v1, "MLCallback:already unreg, return"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1225
    :goto_0
    return-void

    .line 1220
    :cond_0
    const-string v0, "[DMCServiceManager]"

    const-string v1, "updateDownloadStoreAlbumArtNotify"

    invoke-static {v0, v1}, Lcom/htc/music/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1221
    iget-object v0, p0, Lcom/htc/music/DMCServiceManager$2;->this$0:Lcom/htc/music/DMCServiceManager;

    #getter for: Lcom/htc/music/DMCServiceManager;->mDMCItemInfo:Lcom/htc/music/DMCServiceManager$DMCItemInfo;
    invoke-static {v0}, Lcom/htc/music/DMCServiceManager;->access$2100(Lcom/htc/music/DMCServiceManager;)Lcom/htc/music/DMCServiceManager$DMCItemInfo;

    move-result-object v0

    iput-object p4, v0, Lcom/htc/music/DMCServiceManager$DMCItemInfo;->szThumbPath:Ljava/lang/String;

    .line 1223
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/htc/music/DMCServiceManager$2;->sendRefresh(I)V

    goto :goto_0
.end method
