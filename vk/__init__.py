import os

import vk_api

vk_session = vk_api.VkApi(
    token=os.environ['VK_TOKEN'])
